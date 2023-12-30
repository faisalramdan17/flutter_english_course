part of core;

class AppTheme {
  //
  // For Light Mode
  //
  static final lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
    primaryColor: AppColors.lightPrimaryColor,
    brightness: Brightness.light,
    textTheme: GoogleFonts.mulishTextTheme().copyWith(
      titleLarge: GoogleFonts.mulish().copyWith(fontWeight: FontWeight.bold),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      foregroundColor: AppColors.darkPrimaryVariantColor,
      backgroundColor: AppColors.lightBackgroundColor,
      actionsIconTheme: IconThemeData(color: AppColors.darkPrimaryVariantColor),
      iconTheme: IconThemeData(color: AppColors.darkPrimaryVariantColor),
    ),
    splashColor: AppColors.lightPrimaryColor.withOpacity(0.1),
    highlightColor: AppColors.lightPrimaryColor.withOpacity(0.1),
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightPrimaryColor,
      primaryContainer: AppColors.lightPrimaryContainer,
      // primaryVariant: AppColors.lightPrimaryVariantColor,
      // secondary: AppColors.lightSecondaryColor,
      // onPrimary: AppColors.lightOnPrimaryColor,
    ).copyWith(background: AppColors.lightBackgroundColor),
    //
    // bottomAppBarColor: Colors.white,
    //
    // visualDensity: VisualDensity.adaptivePlatformDensity,
    // iconTheme: IconThemeData(
    //   color: AppColors.iconColor,
    // ),
    // floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //   backgroundColor: AppColors.iconColor,
    // ),
    // textTheme: AppFonts.lightTextTheme,
  );
  // ).copyWith(secondary: AppColors.lightAccentColor));

  //
  // For Dark Mode
  //
  static final darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkPrimaryVariantColor,
    // visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.darkPrimaryColor,
    // accentColor: AppColors.darkAccentColor,
    // buttonColor: AppColors.darkButtonColor,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppFonts.darkAppBarTheme.titleMedium,
      color: AppColors.darkPrimaryVariantColor,
      iconTheme: const IconThemeData(color: AppColors.darkOnPrimaryColor),
    ),
    splashColor: AppColors.darkPrimaryVariantColor.withOpacity(0.1),
    highlightColor: AppColors.darkPrimaryVariantColor.withOpacity(0.1),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkPrimaryColor,
      primaryContainer: AppColors.darkPrimaryVariantColor,
      // primaryVariant: AppColors.darkPrimaryVariantColor,
      secondary: AppColors.darkSecondaryColor,
      onPrimary: AppColors.darkOnPrimaryColor,
    ),
    textTheme: AppFonts.darkTextTheme,
    iconTheme: const IconThemeData(
      color: AppColors.iconColor,
    ),
  );
}
