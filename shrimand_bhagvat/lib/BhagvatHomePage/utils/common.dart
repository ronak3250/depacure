import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
String langValue="gujrati";

void changeLang()
{

  langValue=="english"?langValue="gujrati":langValue="english";
}

var newLocale=const Locale('en','US');
