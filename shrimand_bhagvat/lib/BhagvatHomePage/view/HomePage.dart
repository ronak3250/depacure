import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/controller/LoadJsonAssetProvider.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/controller/themeProvider.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/model/quotesModel.dart';
import '../utils/common.dart';
import 'DetailsPage.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;

  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    Provider.of<JsonLoad>(context, listen: false).loadJsonAsset().then((value) {
      setState(() {
        isLoading = false;
      });
    });
    // loadJsonData();

    // TODO: implement initState
    super.initState();
  }

  loadJsonData() async {
    final jsonprovider = Provider.of<JsonLoad>(context, listen: false);
    setState(() {
      jsonprovider.isLoading = true;
    });
    await jsonprovider.loadJsonAsset().then((value) {
      setState(() {
        jsonprovider.isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int randomNumber = math.Random.secure().nextInt(300) + 1;

    final jsonprovider = Provider.of<JsonLoad>(context, listen: true);
    final lanProvider = Provider.of<ModelTheme>(context, listen: true);


    return SafeArea(child: Scaffold(
      body: DefaultTabController(
          length: 3,
          child: Scaffold(

            bottomNavigationBar: TabBar(
                indicatorColor: Colors.black,

                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.fast),
                tabs: [
                  Tab(
                    icon: Icon(

                      Icons.home,
                    ),
                    text: "home".tr(),
                  ),
                  Tab(

                    icon: Icon(Icons.favorite),
                    text: "Favourite".tr(),
                  ),
                  Tab(
                    icon: Icon(Icons.format_quote_rounded),
                    text: "quote".tr(),
                  )
                ]),
            body: TabBarView(
              children: [
                NestedScrollView(
                  body: CustomScrollView(slivers: <Widget>[

                    SliverToBoxAdapter(
                      child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xffFFC7EA),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'chapter'.tr(),
                                textScaleFactor: 2,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.menu)
                            ],
                          )),
                    ),
                    (isLoading == true)
                        ? SliverToBoxAdapter(
                      child: Container(
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                        : (jsonprovider.jsonData == null)
                        ? SliverToBoxAdapter(
                      child: Center(
                        child: Text("No Chapters are available!!"),
                      ),
                    )
                        : SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (_, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsPage(
                                            index: index,
                                          )));
                            },

                            child: ListTile(
                              title: Text(
                                jsonprovider.jsonData![lanProvider
                                    .isLang][index]['translation'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                              subtitle:
                              Consumer<ModelTheme>(
                                builder: (context, value, child) {
                                  return RichText(text: TextSpan(children: [
                                    TextSpan(text: "⩸  ${jsonprovider
                                        .jsonData![lanProvider
                                        .isLang][index]['verses_count']} ",
                                        style: TextStyle(color: value.isDark
                                            ? Colors.black
                                            : Colors.white,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: "verb".tr(),
                                        style: TextStyle(color: value.isDark
                                            ? Colors.black
                                            : Colors.white,
                                            fontWeight: FontWeight.bold))
                                  ]),);
                                },)
                              ,
                              trailing:
                              Icon(Icons.navigate_next_outlined),
                              leading: Container(
                                height: 20,
                                width: 25,
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.orange)),
                              ),
                            ),
                          );
                        },
                        childCount: jsonprovider.jsonData![lanProvider.isLang]
                            .length,
                      ),
                    )

                    //3
                  ],),
                  headerSliverBuilder: (BuildContext context,
                      bool innerBoxIsScrolled) {
                    return [SliverAppBar(
                      actions: [




                        Consumer<ModelTheme>(builder: (context, themeNotifier,
                            child) {
                          return InkWell(
                            child: Icon(Icons.circle_rounded),
                            onTap: () {

                                themeNotifier.isDark
                                    ? themeNotifier.isDark = false
                                    : themeNotifier.isDark = true;

                            },

                          );
                        },),
                        Consumer<ModelTheme>(builder: (context, value, child) {
                          return                         PopupMenuButton<int>(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                onTap: ()async{

                                  value.Lang = "gujrati";
print(value.isLang);
                                  newLocale = Locale('en','US');
                                  print("newLocal $newLocale");

                                  await EasyLocalization.of(context)?.setLocale(newLocale);

                                },
                                value: 1,
                                child: Text(
                                  "English",
                                  style:
                                  TextStyle( fontWeight: FontWeight.w700),
                                ),
                              ),
                              PopupMenuItem(
                                onTap: ()async{
                                  value.Lang = "english";
                                  print(value.isLang);
                                  newLocale = Locale('gu','IN');
                                  print(" first newLocal $newLocale");
                                  await EasyLocalization.of(context)?.setLocale(newLocale);

                                },
                                value: 2,
                                child: Text(
                                  "Gujrati",
                                  style:
                                  TextStyle( fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                            elevation: 4,

                          );

                        },)

                      ],
                      automaticallyImplyLeading: false,
                      expandedHeight: 250.0,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.asset(
                          'asset/splashlogo.jpg',
                          fit: BoxFit.cover,
                          opacity: AlwaysStoppedAnimation(0.6),
                        ),
                      ),
                    )
                    ];
                  },
                ),
                Center(
                  child: Text("no_favourite_is_added").tr(),
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Center(child: RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(children: [
                        TextSpan(

                            text: "'${quoteModel[randomNumber].quote}'",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),

                        TextSpan(text: "\n -${quoteModel[randomNumber].author}",
                            style: TextStyle(color: Colors.orange,
                                fontSize: 26,
                                fontWeight: FontWeight.w500)),
                      ]),),),
                    color: Color(
                        (math.Random().nextDouble() * 0xFFFFFF).toInt())
                        .withOpacity(0.4)),


              ],
            ),
          )),
    ));
  }
}
