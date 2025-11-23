# Hướng dẫn Commit Code lên Git chuyên nghiệp

## 📋 Quy tắc Commit Message (Conventional Commits)

### Format chuẩn:
```
<type>(<scope>): <subject>

<body>

<footer>
```

### Các loại Type phổ biến:

- **feat**: Thêm tính năng mới
- **fix**: Sửa lỗi
- **docs**: Thay đổi documentation
- **style**: Format code, không ảnh hưởng logic
- **refactor**: Refactor code
- **perf**: Cải thiện performance
- **test**: Thêm/sửa tests
- **chore**: Cập nhật build tasks, dependencies
- **ci**: Thay đổi CI/CD

### Ví dụ:

```bash
# Thêm tính năng mới
feat(localization): add multi-language support

# Sửa lỗi
fix(localization): fix translation loading error

# Refactor
refactor(assets): reorganize vector assets structure

# Documentation
docs: add localization explanation guide
```

---

## 🎯 Quy trình Commit chuyên nghiệp

### Bước 1: Kiểm tra trạng thái
```bash
git status
git diff                    # Xem thay đổi chưa staged
git diff --staged          # Xem thay đổi đã staged
```

### Bước 2: Review changes
- Xem lại tất cả thay đổi
- Đảm bảo không có file không cần thiết
- Kiểm tra lỗi trước khi commit

### Bước 3: Add files có chọn lọc
```bash
# Add từng file hoặc nhóm file liên quan
git add lib/core/localization/
git add lib/l10n/

# HOẶC add tất cả
git add .
```

### Bước 4: Commit với message rõ ràng
```bash
git commit -m "feat(localization): add multi-language support"
```

### Bước 5: Push lên remote
```bash
git push origin main
```

---

## 📦 Tách Commit theo Feature

**❌ KHÔNG NÊN:** Commit tất cả thay đổi trong 1 commit
```bash
git commit -m "update code"
```

**✅ NÊN:** Tách thành nhiều commit logic
```bash
# Commit 1: Refactor assets
git add assets/vectors/lang/* assets/vectors/techs/*
git commit -m "refactor(assets): move vector assets to techs folder"

# Commit 2: Add localization core
git add lib/core/localization/
git commit -m "feat(localization): add core localization system"

# Commit 3: Add translations
git add lib/l10n/
git commit -m "feat(localization): add English and Vietnamese translations"

# Commit 4: Integrate localization
git add lib/features/ lib/main.dart
git commit -m "feat(localization): integrate localization in all components"
```

---

## 🔍 Best Practices

### 1. Commit Message Guidelines

**✅ Tốt:**
```
feat(localization): add language switching functionality

- Implement LanguageNotifier for state management
- Add AppLocalizations class for translations
- Integrate with MaterialApp for dynamic locale
```

**❌ Không tốt:**
```
update
fix bug
changes
```

### 2. Commit thường xuyên
- Commit sau mỗi feature hoàn chỉnh
- Không để quá nhiều thay đổi trong 1 commit
- Commit nhỏ, commit thường xuyên

### 3. Review trước khi commit
```bash
# Xem diff trước khi commit
git diff --staged

# Xem log để đảm bảo commit message nhất quán
git log --oneline -10
```

### 4. Sử dụng .gitignore
Đảm bảo không commit:
- Build files
- IDE files
- Dependencies (node_modules, .dart_tool)
- Environment files

---

## 🚀 Workflow đề xuất cho dự án này

### 1. Tạo branch mới cho feature
```bash
git checkout -b feat/language-localization
```

### 2. Commit theo từng bước
```bash
# Bước 1: Core system
git add lib/core/localization/
git commit -m "feat(localization): add core localization system"

# Bước 2: Translations
git add lib/l10n/
git commit -m "feat(localization): add translation files"

# Bước 3: Integration
git add lib/features/ lib/main.dart
git commit -m "feat(localization): integrate localization in UI"

# Bước 4: Dependencies
git add pubspec.yaml pubspec.lock
git commit -m "chore: add flutter_localizations dependency"
```

### 3. Merge về main
```bash
git checkout main
git merge feat/language-localization
git push origin main
```

---

## 📝 Template Commit Message

```bash
git commit -m "feat(scope): brief description

Detailed explanation of what and why:
- Point 1
- Point 2
- Point 3

Closes #123"
```

---

## 🔧 Useful Git Commands

```bash
# Xem thay đổi chi tiết
git diff
git diff --staged
git diff HEAD~1  # So sánh với commit trước

# Sửa commit message cuối cùng
git commit --amend -m "new message"

# Unstage file
git restore --staged <file>

# Xem log đẹp
git log --oneline --graph --all

# Xem file thay đổi trong commit
git show --name-only
```

---

## ⚠️ Lưu ý quan trọng

1. **KHÔNG commit file nhạy cảm**: passwords, API keys, tokens
2. **KHÔNG commit file build**: .dart_tool, build/, .idea/
3. **Luôn review** trước khi commit
4. **Commit message rõ ràng** giúp team hiểu lịch sử
5. **Tách commit** theo feature giúp dễ rollback

