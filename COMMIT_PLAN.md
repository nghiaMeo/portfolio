# Kế hoạch Commit cho Localization Feature

## 📦 Tách thành các commit logic:

### Commit 1: Refactor assets structure
```bash
git reset HEAD assets/vectors/lang/ assets/vectors/techs/ lib/core/assets/vectors/app_vectors.dart
git add assets/vectors/lang/ assets/vectors/techs/ lib/core/assets/vectors/app_vectors.dart
git commit -m "refactor(assets): reorganize vector assets from lang to techs folder"
```

### Commit 2: Add core localization system
```bash
git reset HEAD lib/core/localization/
git add lib/core/localization/
git commit -m "feat(localization): add core localization system

- Add LanguageNotifier for state management
- Add AppLocalizations class for translations
- Add AppLocalizationsDelegate for loading translations
- Add localization keys constants"
```

### Commit 3: Add translation files
```bash
git reset HEAD lib/l10n/
git add lib/l10n/app_en.arb lib/l10n/app_vi.arb lib/l10n/untranslated_messages.txt
git commit -m "feat(localization): add English and Vietnamese translations

- Add app_en.arb with English translations
- Add app_vi.arb with Vietnamese translations
- Add all required translation keys"
```

### Commit 4: Update localization config
```bash
git reset HEAD l10n.yaml
git add l10n.yaml
git commit -m "chore(localization): update l10n configuration"
```

### Commit 5: Integrate localization in UI components
```bash
git reset HEAD lib/features/
git add lib/features/
git commit -m "feat(localization): integrate localization in all UI components

- Replace hardcoded text with AppLocalizations
- Update all components to use translations
- Update dropdown language widget to change locale"
```

### Commit 6: Update main app configuration
```bash
git reset HEAD lib/main.dart pubspec.yaml pubspec.lock
git add lib/main.dart pubspec.yaml pubspec.lock
git commit -m "feat(localization): integrate localization in MaterialApp

- Add LanguageNotifier to Provider
- Configure MaterialApp with dynamic locale
- Add flutter_localizations dependency
- Add localization delegates"
```

### Commit 7: Documentation (optional)
```bash
git add LOCALIZATION_EXPLANATION.md GIT_COMMIT_GUIDE.md
git commit -m "docs: add localization and git commit guides"
```

