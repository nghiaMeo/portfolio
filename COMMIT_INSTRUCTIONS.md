# Hướng dẫn Commit - Windows PowerShell

## 🚀 Cách 1: Commit tất cả trong 1 commit (Nhanh)

### Bước 1: Add tất cả thay đổi
```powershell
git add .
```

### Bước 2: Commit với message chuyên nghiệp
```powershell
git commit -m "feat(localization): add multi-language support" -m "- Add core localization system with LanguageNotifier" -m "- Add AppLocalizations for translation management" -m "- Add English and Vietnamese translations" -m "- Integrate localization in all UI components" -m "- Reorganize vector assets structure" -m "- Add flutter_localizations dependency"
```

### Bước 3: Push lên remote
```powershell
git push origin main
```

---

## 🎯 Cách 2: Tách thành nhiều commit (Chuyên nghiệp)

### Bước 1: Unstage tất cả
```powershell
git reset HEAD
```

### Bước 2: Commit từng nhóm

#### Commit 1: Refactor assets
```powershell
git add assets/vectors/lang/ assets/vectors/techs/ lib/core/assets/vectors/app_vectors.dart
git commit -m "refactor(assets): reorganize vector assets from lang to techs folder"
```

#### Commit 2: Core localization system
```powershell
git add lib/core/localization/
git commit -m "feat(localization): add core localization system" -m "- Add LanguageNotifier for state management" -m "- Add AppLocalizations class for translations" -m "- Add AppLocalizationsDelegate for loading translations" -m "- Add localization keys constants"
```

#### Commit 3: Translation files
```powershell
git add lib/l10n/app_en.arb lib/l10n/app_vi.arb lib/l10n/untranslated_messages.txt
git commit -m "feat(localization): add English and Vietnamese translations"
```

#### Commit 4: Update config
```powershell
git add l10n.yaml
git commit -m "chore(localization): update l10n configuration"
```

#### Commit 5: UI integration
```powershell
git add lib/features/
git commit -m "feat(localization): integrate localization in all UI components" -m "- Replace hardcoded text with AppLocalizations" -m "- Update all components to use translations" -m "- Update dropdown language widget to change locale"
```

#### Commit 6: Main app config
```powershell
git add lib/main.dart pubspec.yaml pubspec.lock
git commit -m "feat(localization): integrate localization in MaterialApp" -m "- Add LanguageNotifier to Provider" -m "- Configure MaterialApp with dynamic locale" -m "- Add flutter_localizations dependency"
```

#### Commit 7: Documentation (optional)
```powershell
git add LOCALIZATION_EXPLANATION.md GIT_COMMIT_GUIDE.md COMMIT_INSTRUCTIONS.md COMMIT_PLAN.md
git commit -m "docs: add localization and git commit guides"
```

### Bước 3: Push tất cả commits
```powershell
git push origin main
```

---

## 📋 Kiểm tra trước khi push

```powershell
# Xem tất cả commits sắp push
git log origin/main..HEAD --oneline

# Xem thay đổi tổng thể
git diff origin/main..HEAD --stat
```

---

## ⚠️ Lưu ý

1. **Kiểm tra branch**: Đảm bảo đang ở branch đúng
   ```powershell
   git branch
   ```

2. **Pull trước khi push**: Nếu có người khác đã push
   ```powershell
   git pull origin main
   ```

3. **Review commits**: Xem lại tất cả commits trước khi push
   ```powershell
   git log --oneline -10
   ```

