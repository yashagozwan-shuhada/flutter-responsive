echo "Generating..."
dart run easy_localization:generate -S assets/langs -O lib/core/translation
dart run easy_localization:generate -S assets/langs -O lib/core/translation -f keys -o locale_keys.g.dart
echo "Finish !!!"