# Flutter Responsive

## Code Gen Help

```bash
dart run easy_localization:generate -h
```

## Generate Lang

```bash
dart run easy_localization:generate --source-dir assets/langs
```

## Generate Key

```bash
dart run easy_localization:generate -S assets/langs -O lib/core/translation -f keys -o locale_keys.g.dart
```

## Generate Lang and Key

```bash
dart run easy_localization:generate -S assets/langs -O lib/core/translation && dart run easy_localization:generate -S assets/langs -O lib/core/translation -f keys -o locale_keys.g.dart
```
