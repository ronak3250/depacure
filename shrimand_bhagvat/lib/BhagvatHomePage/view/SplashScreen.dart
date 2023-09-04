import 'package:flutter/material.dart';
import 'package:shrimand_bhagvat/BhagvatHomePage/view/HomePage.dart';
import 'package:shrimand_bhagvat/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed( Duration(seconds: 5), () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:

        [
          Container(

            height: 200,
            width: 200,

            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('asset/splashlogo.jpg'),fit:BoxFit.cover,opacity: 0.8)),
          ),
          SizedBox(height: 20,),

          Text("यदा यदा हि धर्मस्य ग्लानिर्भवति भारत:।\nअभ्युत्थानमधर्मस्य तदात्मानं सृजाम्यहम्॥",style: TextStyle(fontWeight: FontWeight.bold),)
        ],)),

    );
  }
}
