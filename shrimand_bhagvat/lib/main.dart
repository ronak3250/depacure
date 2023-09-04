import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/controller/LoadJsonAssetProvider.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/view/HomePage.dart';
import 'dart:math' as math;
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shrimand_bhagvat/demo.dart';
import 'BhagvatHomePage/controller/themeProvider.dart';
import 'BhagvatHomePage/utils/common.dart';
import 'BhagvatHomePage/view/DetailsPage.dart';
import 'BhagvatHomePage/view/SplashScreen.dart';

//import 'L10n/l10n.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
      fallbackLocale:  Locale('en', 'US'),
      child: MultiProvider(providers: [

        ChangeNotifierProvider<ModelTheme>(
          create: (context) => ModelTheme(),
        ),
        ChangeNotifierProvider<JsonLoad>(
          create: (context) => JsonLoad(),
        ),

      ],
        child:Consumer<ModelTheme>(builder: (context, themeNotifier, child) {
          return MaterialApp(
            // supportedLocales: context.supportedLocales,
            supportedLocales: EasyLocalization.of(context)!.supportedLocales,
            localizationsDelegates: EasyLocalization.of(context)!.delegates,
            // localizationsDelegates: context.localizationDelegates,
            // locale:  context.locale,
            locale: EasyLocalization.of(context)!.locale,
            // ThemeData(tabBarTheme: TabBarTheme(labelColor: Colors.orange,unselectedLabelColor: Colors.black)),
            theme: themeNotifier.isDark
                ? ThemeData.light(

                useMaterial3: true
            )
                : ThemeData.dark(useMaterial3: true),


            //supportedLocales: L10n.all,

            debugShowCheckedModeBanner: false,
            home: SplashScreen(

            ),);
        },),
      ),

      supportedLocales:  [Locale('en', 'US'), Locale('gu', 'IN')],
      path: 'asset/translations'));
}
