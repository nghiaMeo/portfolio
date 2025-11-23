# Giải thích chi tiết về chức năng đổi ngôn ngữ

## 📋 Tổng quan

Hệ thống đổi ngôn ngữ hoạt động dựa trên 4 thành phần chính:
1. **LanguageNotifier** - Quản lý state ngôn ngữ hiện tại
2. **AppLocalizations** - Chứa và cung cấp translations
3. **AppLocalizationsDelegate** - Load translations từ file ARB
4. **ARB Files** - File chứa translations (app_en.arb, app_vi.arb)

---

## 🔧 Các thành phần chi tiết

### 1. LanguageNotifier (Quản lý ngôn ngữ)

**File:** `lib/core/localization/language_notifier.dart`

```dart
class LanguageNotifier extends ChangeNotifier {
  Locale _locale = const Locale('en');  // Ngôn ngữ mặc định là tiếng Anh
  
  Locale get locale => _locale;  // Getter để lấy ngôn ngữ hiện tại
  
  void setLanguage(String languageCode) {
    setLocale(Locale(languageCode));  // Đặt ngôn ngữ mới
  }
  
  void setLocale(Locale locale) {
    if (_locale != locale) {
      _locale = locale;  // Cập nhật ngôn ngữ
      notifyListeners();  // Thông báo cho tất cả widgets đang lắng nghe
    }
  }
}
```

**Vai trò:**
- Lưu trữ ngôn ngữ hiện tại (`_locale`)
- Thông báo khi ngôn ngữ thay đổi (`notifyListeners()`)
- Các widget sử dụng `Provider.of<LanguageNotifier>` sẽ tự động rebuild khi ngôn ngữ thay đổi

**Ví dụ sử dụng:**
```dart
final languageNotifier = Provider.of<LanguageNotifier>(context);
languageNotifier.setLanguage('vi');  // Chuyển sang tiếng Việt
```

---

### 2. AppLocalizations (Chứa translations)

**File:** `lib/core/localization/app_localzations.dart`

```dart
class AppLocalizations {
  final Locale locale;  // Ngôn ngữ của instance này
  Map<String, String> _localizationStrings = {};  // Map chứa translations
  
  // Load translations từ file ARB
  Future<bool> load() async {
    String jsonString = await rootBundle.loadString(
      'lib/l10n/app_${locale.languageCode}.arb',  // Load file theo ngôn ngữ
    );
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    
    // Lưu vào map (bỏ qua các key bắt đầu bằng @)
    jsonMap.forEach((key, value) {
      if (!key.startsWith('@') && value is String) {
        _localizationStrings[key] = value;
      }
    });
  }
  
  // Dịch một key thành text
  String translate(String key) {
    return _localizationStrings[key] ?? key;  // Trả về translation hoặc key nếu không tìm thấy
  }
  
  // Getter methods - Dễ sử dụng hơn
  String get about => translate(L10nKeys.about);
  String get work => translate(L10nKeys.work);
}
```

**Vai trò:**
- Load translations từ file ARB
- Cung cấp methods để lấy translations
- Mỗi instance tương ứng với một ngôn ngữ

**Ví dụ sử dụng:**
```dart
final l10n = AppLocalizations.of(context);
Text(l10n.about);  // Hiển thị "About" (en) hoặc "Giới thiệu" (vi)
```

---

### 3. AppLocalizationsDelegate (Load translations)

**File:** `lib/core/localization/localizations_delegate.dart`

```dart
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  
  // Kiểm tra xem ngôn ngữ có được hỗ trợ không
  @override
  bool isSupported(Locale locale) {
    return ['en','vi'].contains(locale.languageCode);
  }
  
  // Load translations cho một ngôn ngữ cụ thể
  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations(locale);
    await localizations.load();  // Load từ file ARB
    return localizations;
  }
  
  // Có nên reload khi locale thay đổi không
  @override
  bool shouldReload(covariant LocalizationsDelegate old) => true;
}
```

**Vai trò:**
- Flutter gọi `load()` khi cần translations cho một locale
- Tạo instance `AppLocalizations` và load translations từ file ARB
- `shouldReload = true` đảm bảo reload khi locale thay đổi

---

### 4. ARB Files (File chứa translations)

**Files:** `lib/l10n/app_en.arb`, `lib/l10n/app_vi.arb`

**app_en.arb:**
```json
{
  "@@locale": "en",
  "about": "About",
  "work": "Work",
  "contact": "Contact"
}
```

**app_vi.arb:**
```json
{
  "@@locale": "vi",
  "about": "Giới thiệu",
  "work": "Dự án",
  "contact": "Liên hệ"
}
```

**Vai trò:**
- Lưu trữ tất cả translations
- Format JSON đơn giản
- Key giống nhau, value khác nhau theo ngôn ngữ

---

## 🔄 Luồng hoạt động khi đổi ngôn ngữ

### Bước 1: Người dùng chọn ngôn ngữ từ dropdown

```dart
// File: dropdown_language.dart
onSelected: (value) {
  if (value == 'vi') {
    languageNotifier.setLanguage('vi');  // Gọi setLanguage
  }
}
```

### Bước 2: LanguageNotifier cập nhật và thông báo

```dart
// Trong LanguageNotifier
void setLanguage(String languageCode) {
  _locale = Locale(languageCode);  // Cập nhật locale
  notifyListeners();  // Thông báo tất cả widgets đang lắng nghe
}
```

### Bước 3: MaterialApp rebuild với locale mới

```dart
// File: main.dart
MaterialApp(
  key: ValueKey(languageNotifier.locale),  // Key thay đổi → rebuild
  locale: languageNotifier.locale,  // Locale mới
  localizationsDelegates: [
    AppLocalizations.delegate,  // Delegate sẽ load translations mới
  ],
)
```

### Bước 4: AppLocalizationsDelegate load translations mới

```dart
// Flutter tự động gọi
Future<AppLocalizations> load(Locale locale) async {
  final localizations = AppLocalizations(locale);  // Tạo instance mới
  await localizations.load();  // Load file app_vi.arb
  return localizations;
}
```

### Bước 5: Tất cả widgets sử dụng AppLocalizations rebuild

```dart
// Tất cả widgets này sẽ tự động rebuild
final l10n = AppLocalizations.of(context);
Text(l10n.about);  // Hiển thị "Giới thiệu" thay vì "About"
```

---

## 📝 Cách thêm translation mới

### Bước 1: Thêm key vào `localization_keys.dart`

```dart
class L10nKeys {
  static const myNewText = 'myNewText';
}
```

### Bước 2: Thêm vào ARB files

**app_en.arb:**
```json
{
  "myNewText": "Hello World"
}
```

**app_vi.arb:**
```json
{
  "myNewText": "Xin chào thế giới"
}
```

### Bước 3: Thêm getter vào `AppLocalizations`

```dart
String get myNewText => translate(L10nKeys.myNewText);
```

### Bước 4: Sử dụng trong widget

```dart
final l10n = AppLocalizations.of(context);
Text(l10n.myNewText);
```

---

## 🎯 Tóm tắt

1. **LanguageNotifier**: Lưu ngôn ngữ hiện tại, thông báo khi thay đổi
2. **AppLocalizations**: Chứa translations, cung cấp methods để lấy text
3. **AppLocalizationsDelegate**: Load translations từ file ARB
4. **ARB Files**: Lưu trữ translations dạng JSON

**Khi đổi ngôn ngữ:**
- LanguageNotifier cập nhật → notifyListeners()
- MaterialApp rebuild với locale mới
- Delegate load translations mới từ ARB file
- Tất cả widgets rebuild với text mới

---

## 💡 Lưu ý quan trọng

1. **Provider**: Phải wrap app với `ChangeNotifierProvider<LanguageNotifier>`
2. **MaterialApp locale**: Phải truyền `languageNotifier.locale`
3. **shouldReload**: Phải return `true` để reload khi locale thay đổi
4. **ARB files**: Phải thêm vào `assets` trong `pubspec.yaml`

