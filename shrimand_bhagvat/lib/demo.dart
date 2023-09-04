// import 'package:flutter/material.dart';
//
// //import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
// import 'package:shrimand_bhagvat/BhagvatHomePage/controller/themeProvider.dart';
//
// class demo extends StatefulWidget {
//   const demo({super.key});
//
//   @override
//   State<demo> createState() => _demoState();
// }
//
//
// class _demoState extends State<demo> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ModelTheme>(builder: (context, themeNotifier, child) {
//       return Scaffold(appBar: AppBar(
//
//         actions: [
//         InkWell(
//           child: Icon(Icons.circle_rounded),
//           onTap: () {
//             setState(() {
//               themeNotifier.isDark
//                   ? themeNotifier.isDark = false
//                   : themeNotifier.isDark = true;
//             });
//           },
//         ),],),
//
//       body: Text("All Shloka[श्लोक]"),
//       );
//
//     },);
//
//   }
// }
