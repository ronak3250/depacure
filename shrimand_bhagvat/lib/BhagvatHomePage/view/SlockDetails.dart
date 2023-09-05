import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:provider/provider.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/controller/themeProvider.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/model/FavouriteModel.dart';

class SlockDetails extends StatefulWidget {
  final details;

  SlockDetails({super.key, this.details});

  @override
  State<SlockDetails> createState() => _SlockDetailsState();
}

class _SlockDetailsState extends State<SlockDetails> {
  @override
  Widget build(BuildContext context) {
    var colors =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.2);
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: Consumer<ModelTheme>(
          builder: (context, themevalue, child) {
            return AppBar(
              centerTitle: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Consumer<ModelTheme>(
                    builder: (context, value, child) {
                      return InkWell(
                        onTap: (){

                        },
                        child: widget.details["favourite"]==false?Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.grey,

                        ):Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.red,
                        ),
                      );
                    },

                  ),
                )
              ],
              title: Text(
                "verb_screen".tr(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: themevalue.isDark ? Colors.black : Colors.white,
                ),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Consumer<ModelTheme>(
          builder: (context, themevalue, child) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(0.2)),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(widget.details["shlok_img"]),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors,
                    ),
                    child: Center(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "verb".tr(),
                                  style: TextStyle(
                                    color: themevalue.isDark
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: "\t${widget.details["shlok_no"]}",
                                  style: TextStyle(
                                      color: themevalue.isDark
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 20))
                            ]))),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors,
                    ),
                    child: Center(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "\n${widget.details["shlok_name"]}",
                                  style: TextStyle(
                                      color: themevalue.isDark
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 20))
                            ]))),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colors,
                    ),
                    child: Center(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "verb_summary".tr(),
                                  style: TextStyle(
                                      color: themevalue.isDark
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "\n${widget.details["meaning"]}",
                                  style: TextStyle(
                                      color: themevalue.isDark
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 20))
                            ]))),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ));
  }
}
