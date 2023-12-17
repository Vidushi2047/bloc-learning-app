// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theme_bloc.dart';

enum AppTheme { light, dark }

class ThemeState {
  final AppTheme appTheme;

  ThemeState({this.appTheme = AppTheme.light});
  factory ThemeState.initial() {
    return ThemeState();
  }

  @override
  String toString() => 'ThemeState(appTheme: $appTheme)';

  ThemeState copyWith({
    AppTheme? appTheme,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}
