part of core;

class AppFonts {
  static final TextTheme lightAppBarTheme = TextTheme(
    displayLarge: lightAppbarTitleTextStyle,
    displayMedium: lightAppbarTitleTextStyle,
    displaySmall: lightAppbarTitleTextStyle,
    headlineMedium: lightAppbarTitleTextStyle,
    headlineSmall: lightAppbarTitleTextStyle,
    titleLarge: lightAppbarTitleTextStyle,
    titleMedium: lightAppbarSubtitleTextStyle,
    // headline: lightAppbarSubtitleTextStyle,
  );

  static final TextTheme darkAppBarTheme = TextTheme(
    displayLarge: darkAppbarTitleTextStyle,
    displayMedium: darkAppbarTitleTextStyle,
    displaySmall: darkAppbarTitleTextStyle,
    headlineMedium: darkAppbarTitleTextStyle,
    headlineSmall: darkAppbarTitleTextStyle,
    titleLarge: darkAppbarTitleTextStyle,
    titleMedium: darkAppbarTitleTextStyle,
    // headline: darkAppbarSubtitleTextStyle,
  );

  static const TextTheme lightTextTheme = TextTheme(
    // headline1: lightAppbarTitleTextStyle,
    // headline2: lightAppbarTitleTextStyle,
    // headline3: lightAppbarTitleTextStyle,
    // headline4: lightAppbarTitleTextStyle,
    // headline5: lightAppbarTitleTextStyle,
    // headline6: lightAppbarTitleTextStyle,
    titleMedium: lightScreenTaskNameTextStyle,
    bodyLarge: lightScreenTaskNameTextStyle,
    bodyMedium: lightScreenTaskDurationTextStyle,
  );

  static final TextTheme darkTextTheme = TextTheme(
    // headline1: lightAppbarTitleTextStyle,
    // headline2: lightAppbarTitleTextStyle,
    // headline3: lightAppbarTitleTextStyle,
    // headline4: lightAppbarTitleTextStyle,
    // headline5: lightAppbarTitleTextStyle,
    // headline6: lightAppbarTitleTextStyle,
    titleMedium: darkScreenTaskNameTextStyle,
    bodyLarge: darkScreenTaskNameTextStyle,
    bodyMedium: darkScreenTaskDurationTextStyle,
  );

  static const TextStyle lightScreenHeadingTextStyle = TextStyle(
    // fontFamily: GoogleFonts.vollkorn().fontFamily,
    // fontFamily: GoogleFonts.ubuntu().fontFamily,
    fontSize: 40.0,
  );
  static const TextStyle lightScreenTaskNameTextStyle = TextStyle(
      // fontFamily: GoogleFonts.vollkorn().fontFamily,
      // fontFamily: GoogleFonts.ubuntu().fontFamily,
      // fontSize: 17.0,
      );
  static const TextStyle lightScreenTaskDurationTextStyle = TextStyle(
    // fontFamily: GoogleFonts.vollkorn().fontFamily,
    // fontFamily: GoogleFonts.ubuntu().fontFamily,
    fontSize: 14,
  );

  static final TextStyle darkScreenHeadingTextStyle =
      lightScreenHeadingTextStyle.copyWith(color: AppColors.darkOnPrimaryColor);

  static final TextStyle darkScreenTaskNameTextStyle =
      lightScreenTaskNameTextStyle.copyWith(color: AppColors.darkOnPrimaryColor);

  static const TextStyle darkScreenTaskDurationTextStyle = lightScreenTaskDurationTextStyle;

  //---------------------------------------------------------

  static const regularFont = FontWeight.w400;
  static const semiBoldFont = FontWeight.w500;
  static const boldFont = FontWeight.w600;

  static const TextStyle lightAppbarTitleTextStyle = TextStyle(
      // fontFamily: GoogleFonts.volkhov().fontFamily,
      // fontFamily: GoogleFonts.ubuntu().fontFamily,
      // color: AppColors.darkPrimaryVariantColor,
      color: Colors.black,
      fontSize: 24,
      fontWeight: semiBoldFont);

  // static final TextStyle darkAppbarTitleTextStyle = TextStyle(
  //     // fontFamily: GoogleFonts.volkhov().fontFamily,
  //     fontFamily: GoogleFonts.ubuntu().fontFamily,
  //     color: AppColors.darkOnPrimaryColor,
  //     fontSize: 24,
  //     fontWeight: semiBoldFont);

  static final TextStyle darkAppbarTitleTextStyle =
      lightAppbarTitleTextStyle.copyWith(color: AppColors.darkOnPrimaryColor);

  static final TextStyle lightAppbarSubtitleTextStyle = TextStyle(
      fontFamily: GoogleFonts.vollkorn().fontFamily,
      // color: AppColors.lightOnPrimaryColor,
      fontSize: 22,
      fontWeight: regularFont);

  static final TextStyle darkAppbarSubtitleTextStyle =
      lightAppbarTitleTextStyle.copyWith(color: AppColors.darkOnPrimaryColor);

  static dialogTitle() => TextStyle(
      fontFamily: GoogleFonts.vollkorn().fontFamily,
      // color: AppColors.lightOnPrimaryColor,
      fontSize: 20,
      fontWeight: boldFont);
  static dialogCancelBtn() => TextStyle(
      fontFamily: GoogleFonts.vollkorn().fontFamily, color: AppColors.appWhite, fontSize: 16, fontWeight: semiBoldFont);
  static dialogConfirmBtn() => TextStyle(
      fontFamily: GoogleFonts.vollkorn().fontFamily, color: AppColors.appWhite, fontSize: 16, fontWeight: semiBoldFont);
}
