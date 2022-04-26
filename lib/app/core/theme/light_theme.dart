import 'package:flutter/material.dart';

import 'theme_index.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness
      .light, //Setting the Brightness to light  so that this can be used as Light ThemeData
  colorScheme: lightColorScheme,
  
  textTheme:
      CustomTextTheme.textThemeLight, //Setting the Text Theme to LightTextTheme
  
);


// final ThemeData lightTheme = ThemeData(
//   scaffoldBackgroundColor: whiteColor,
//   primaryColor: appColorPrimary,
//   primaryColorDark: appColorPrimary,
//   errorColor: Colors.red,
//   hoverColor: Colors.white54,
//   dividerColor: viewLineColor,
//   fontFamily: GoogleFonts.openSans().fontFamily,
//   appBarTheme: AppBarTheme(
//     color: appColorPrimary,
//     iconTheme: IconThemeData(color: iconColorPrimary),
//     systemOverlayStyle:
//         SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
//   ),
//   textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
//   colorScheme: ColorScheme.light(
//       primary: appColorPrimary, primaryContainer: appColorPrimary),
//   cardTheme: CardTheme(color: Colors.white),
//   cardColor: Colors.white,
//   iconTheme: IconThemeData(color: textPrimaryColor),
//   bottomSheetTheme: BottomSheetThemeData(backgroundColor: whiteColor),
//   textTheme: TextTheme(
//     button: TextStyle(color: appColorPrimary),
//     headline6: TextStyle(color: textPrimaryColor),
//     subtitle2: TextStyle(color: textSecondaryColor),
//   ),
//   visualDensity: VisualDensity.adaptivePlatformDensity,
// ).copyWith(
//   pageTransitionsTheme:
//       PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
//     TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
//     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
//     TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
//     TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
//   }),
// );

// import '../values/values_index.dart';

//  final ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     scaffoldBackgroundColor: AppColors.primaryBackground,
//     splashColor: Colors.transparent,
//     highlightColor: Colors.transparent,
//     primaryColor: AppColors.accentColor,
//     colorScheme: ColorScheme.fromSwatch().copyWith(
//       secondary: AppColors.accentColor,
//     ),
//     appBarTheme: AppBarTheme(
//       elevation: 0,
//       centerTitle: true,
//       backgroundColor: Colors.white,
//       iconTheme: IconThemeData(
//         color: AppColors.primaryText,
//       ),
//       titleTextStyle: TextStyle(
//         color: AppColors.primaryText,
//         fontSize: 20,
//         fontWeight: FontWeight.w500,
//       ),
//       toolbarTextStyle: TextStyle(
//         color: AppColors.primaryText,
//         fontSize: 20,
//         fontWeight: FontWeight.w500,
//       ),
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: AppColors.primaryBackground,
//       unselectedLabelStyle: TextStyle(fontSize: 12),
//       selectedLabelStyle: TextStyle(fontSize: 12),
//       unselectedItemColor: Color(0xffA2A5B9),
//       selectedItemColor: AppColors.accentColor,
//     ),
//     tabBarTheme: TabBarTheme(
//       indicatorSize: TabBarIndicatorSize.label,
//       labelColor: AppColors.accentColor,
//       unselectedLabelColor: AppColors.secondaryText,
//     ),
//   );

// /// -------------------------- Light Theme  -------------------------------------------- ///
// final ThemeData lightTheme = ThemeData(
//   /// Brightness
//   brightness: Brightness.light,

//   /// Primary Color
//   primaryColor: Color(0xff3C4EC5),

//   /// Scaffold and Background color
//   backgroundColor: Color(0xffffffff),
//   scaffoldBackgroundColor: Color(0xffffffff),
//   canvasColor: Colors.transparent,

//   /// AppBar Theme
//   appBarTheme: AppBarTheme(
//       backgroundColor: Color(0xffffffff),
//       iconTheme: IconThemeData(color: Color(0xff495057)),
//       actionsIconTheme: IconThemeData(color: Color(0xff495057))),

//   /// Card Theme
//   cardTheme: CardTheme(color: Color(0xfff6f6f6)),

//   textTheme: TextTheme(
//       headline6: GoogleFonts.aBeeZee(), bodyText1: GoogleFonts.abel()),

//   /// Colorscheme
//   colorScheme: ColorScheme.light(
//       primary: Color(0xff3C4EC5),
//       onPrimary: Color(0xffeeeeee),
//       primaryContainer: Color(0xff3C4EC5),
//       secondary: Color(0xff3C4EC5),
//       secondaryContainer: Color(0xffeeeeee),
//       onSecondary: Color(0xffeeeeee),
//       surface: Color(0xffeeeeee),
//       background: Color(0xffeeeeee),
//       onBackground: Color(0xff495057)),

//   /// Floating Action Theme
//   floatingActionButtonTheme: FloatingActionButtonThemeData(
//       backgroundColor: Color(0xff3C4EC5),
//       splashColor: Color(0xffeeeeee).withAlpha(100),
//       highlightElevation: 8,
//       elevation: 4,
//       focusColor: Color(0xff3C4EC5),
//       hoverColor: Color(0xff3C4EC5),
//       foregroundColor: Color(0xffeeeeee)),

//   /// Divider Theme
//   dividerTheme: DividerThemeData(color: Color(0xffe8e8e8), thickness: 1),
//   dividerColor: Color(0xffe8e8e8),

//   /// Bottom AppBar Theme
//   bottomAppBarTheme: BottomAppBarTheme(color: Color(0xffeeeeee), elevation: 2),

//   /// Tab bar Theme
//   tabBarTheme: TabBarTheme(
//     unselectedLabelColor: Color(0xff495057),
//     labelColor: Color(0xff3d63ff),
//     indicatorSize: TabBarIndicatorSize.label,
//     indicator: UnderlineTabIndicator(
//       borderSide: BorderSide(color: Color(0xff3d63ff), width: 2.0),
//     ),
//   ),

//   /// CheckBox theme
//   checkboxTheme: CheckboxThemeData(
//     checkColor: MaterialStateProperty.all(Color(0xffeeeeee)),
//     fillColor: MaterialStateProperty.all(Color(0xff3C4EC5)),
//   ),

//   /// Radio theme
//   radioTheme: RadioThemeData(
//     fillColor: MaterialStateProperty.all(Color(0xff3C4EC5)),
//   ),

//   ///Switch Theme
//   switchTheme: SwitchThemeData(
//     trackColor: MaterialStateProperty.resolveWith((state) {
//       const Set<MaterialState> interactiveStates = <MaterialState>{
//         MaterialState.pressed,
//         MaterialState.hovered,
//         MaterialState.focused,
//         MaterialState.selected,
//       };
//       if (state.any(interactiveStates.contains)) {
//         return Color(0xffabb3ea);
//       }
//       return null;
//     }),
//     thumbColor: MaterialStateProperty.resolveWith((state) {
//       const Set<MaterialState> interactiveStates = <MaterialState>{
//         MaterialState.pressed,
//         MaterialState.hovered,
//         MaterialState.focused,
//         MaterialState.selected,
//       };
//       if (state.any(interactiveStates.contains)) {
//         return Color(0xff3C4EC5);
//       }
//       return null;
//     }),
//   ),

//   /// Slider Theme
//   sliderTheme: SliderThemeData(
//     activeTrackColor: Color(0xff3d63ff),
//     inactiveTrackColor: Color(0xff3d63ff).withAlpha(140),
//     trackShape: RoundedRectSliderTrackShape(),
//     trackHeight: 4.0,
//     thumbColor: Color(0xff3d63ff),
//     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
//     overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
//     tickMarkShape: RoundSliderTickMarkShape(),
//     inactiveTickMarkColor: Colors.red[100],
//     valueIndicatorShape: PaddleSliderValueIndicatorShape(),
//     valueIndicatorTextStyle: TextStyle(
//       color: Color(0xffeeeeee),
//     ),
//   ),

//   /// Other Colors
//   splashColor: Colors.white.withAlpha(100),
//   indicatorColor: Color(0xffeeeeee),
//   highlightColor: Color(0xffeeeeee),
//   errorColor: Color(0xfff0323c),
// );




