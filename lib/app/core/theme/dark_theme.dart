import 'package:flutter/material.dart';
import 'theme_index.dart';

final ThemeData darkTheme = ThemeData(
  //fontFamily: FontFamily.productSans,
  brightness: Brightness.dark,
  colorScheme:
      darkColorScheme, //Setting the Brightness to Dark  so that this can be used as Dark ThemeData
  textTheme:
      CustomTextTheme.textThemeDark, //Setting the Text Theme to DarkTextTheme
);


  // scaffoldBackgroundColor: Colors.black,
  // backgroundColor: Colors.black,
  // highlightColor: Colors.transparent,
  // splashColor: Colors.transparent,

  // bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //   backgroundColor: Colors.black,
  //   unselectedItemColor: Colors.white,
  //   selectedItemColor: Colors.redAccent,
  //   elevation: 0,
  // ),

  // appBarTheme: AppBarTheme(
  //   centerTitle: true,
  //   color: Colors.black,
  //   elevation: 0,
  //   titleTextStyle: TextStyle(
  //     color: Colors.white,
  //     fontWeight: FontWeight.bold,
  //     fontSize: 20,
  //   ),
  // ),

  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ButtonStyle(
  // backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
  // )),
  //! You Can Set All Your Custom Dark Theme Here

// final ThemeData darkTheme = ThemeData(
//   scaffoldBackgroundColor: appBackgroundColorDark,
//   highlightColor: appBackgroundColorDark,
//   errorColor: Color(0xFFCF6676),
//   appBarTheme: AppBarTheme(
//     color: appBackgroundColorDark,
//     iconTheme: IconThemeData(color: iconColorSecondaryDark),
//     systemOverlayStyle:
//         SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
//   ),
//   primaryColor: color_primary_black,
//   dividerColor: Color(0xFFDADADA).withOpacity(0.3),
//   primaryColorDark: color_primary_black,
//   textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
//   hoverColor: Colors.black12,
//   fontFamily: GoogleFonts.openSans().fontFamily,
//   bottomSheetTheme:
//       BottomSheetThemeData(backgroundColor: appBackgroundColorDark),
//   primaryTextTheme: TextTheme(
//       headline6: primaryTextStyle(color: Colors.white),
//       overline: primaryTextStyle(color: Colors.white)),
//   cardTheme: CardTheme(color: cardBackgroundBlackDark),
//   cardColor: appSecondaryBackgroundColor,
//   iconTheme: IconThemeData(color: whiteColor),
//   textTheme: TextTheme(
//     button: TextStyle(color: color_primary_black),
//     headline6: TextStyle(color: whiteColor),
//     subtitle2: TextStyle(color: Colors.white54),
//   ),
//   visualDensity: VisualDensity.adaptivePlatformDensity,
//   colorScheme: ColorScheme.dark(
//           primary: appBackgroundColorDark,
//           onPrimary: cardBackgroundBlackDark,
//           primaryContainer: color_primary_black)
//       .copyWith(secondary: whiteColor),
// ).copyWith(
//   pageTransitionsTheme:
//       PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
//     TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
//     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
//     TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
//     TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
//   }),
// );

 /// -------------------------- Dark Theme  -------------------------------------------- ///
  // final ThemeData darkTheme = ThemeData(
  //   /// Brightness
  //   brightness: Brightness.dark,

  //   /// Primary Color
  //   primaryColor: Color(0xff069DEF),

  //   /// Scaffold and Background color
  //   scaffoldBackgroundColor: Color(0xff161616),
  //   backgroundColor: Color(0xff161616),
  //   canvasColor: Colors.transparent,

  //   /// AppBar Theme
  //   appBarTheme: AppBarTheme(backgroundColor: Color(0xff161616)),

  //   /// Card Theme
  //   cardTheme: CardTheme(color: Color(0xff222327)),

  //   /// Colorscheme
  //   colorScheme: ColorScheme.dark(
  //     primary: Color(0xff069DEF),
  //     primaryContainer: Color(0xff069DEF),
  //     secondary: Color(0xff069DEF),
  //     secondaryContainer: Color(0xffffffff),
  //     background: Color(0xff161616),
  //     onPrimary: Colors.white,
  //     onBackground: Color(0xfff3f3f3),
  //     onSecondary: Colors.white,
  //     surface: Color(0xff585e63),
  //   ),

  //   /// Input (Text-Field) Theme
  //   inputDecorationTheme: InputDecorationTheme(
  //     focusedBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.all(Radius.circular(4)),
  //       borderSide: BorderSide(width: 1, color: Color(0xff069DEF)),
  //     ),
  //     enabledBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.all(Radius.circular(4)),
  //       borderSide: BorderSide(width: 1, color: Colors.white70),
  //     ),
  //     border: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(4)),
  //         borderSide: BorderSide(width: 1, color: Colors.white70)),
  //   ),

  //   /// Divider Color
  //   dividerTheme: DividerThemeData(color: Color(0xff363636), thickness: 1),
  //   dividerColor: Color(0xff363636),

  //   /// Floating Action Theme
  //   floatingActionButtonTheme: FloatingActionButtonThemeData(
  //       backgroundColor: Color(0xff069DEF),
  //       splashColor: Colors.white.withAlpha(100),
  //       highlightElevation: 8,
  //       elevation: 4,
  //       focusColor: Color(0xff069DEF),
  //       hoverColor: Color(0xff069DEF),
  //       foregroundColor: Colors.white),

  //   /// Bottom AppBar Theme
  //   bottomAppBarTheme:
  //       BottomAppBarTheme(color: Color(0xff464c52), elevation: 2),

  //   /// Tab bar Theme
  //   tabBarTheme: TabBarTheme(
  //     unselectedLabelColor: Color(0xff495057),
  //     labelColor: Color(0xff069DEF),
  //     indicatorSize: TabBarIndicatorSize.label,
  //     indicator: UnderlineTabIndicator(
  //       borderSide: BorderSide(color: Color(0xff069DEF), width: 2.0),
  //     ),
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
  //     activeTrackColor: Color(0xff069DEF),
  //     inactiveTrackColor: Color(0xff069DEF).withAlpha(100),
  //     trackShape: RoundedRectSliderTrackShape(),
  //     trackHeight: 4.0,
  //     thumbColor: Color(0xff069DEF),
  //     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
  //     overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
  //     tickMarkShape: RoundSliderTickMarkShape(),
  //     inactiveTickMarkColor: Colors.red[100],
  //     valueIndicatorShape: PaddleSliderValueIndicatorShape(),
  //     valueIndicatorTextStyle: TextStyle(
  //       color: Colors.white,
  //     ),
  //   ),

  //   ///Other Color
  //   indicatorColor: Colors.white,
  //   disabledColor: Color(0xffa3a3a3),
  //   highlightColor: Colors.white.withAlpha(28),
  //   errorColor: Colors.orange,
  //   cardColor: Color(0xff282a2b),
  //   splashColor: Colors.white.withAlpha(56),
  // );


