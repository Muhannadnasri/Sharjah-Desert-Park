import 'package:flutter/material.dart';

Map<String, Map<String, String>> get keys => {
      'en_US': {
        'title_Arabia': 'Hello World',
      },
      'ar_AE': {
        'title_Arabia': 'नमस्ते दुनिया',
      }
    };

var locale = Locale("en", "US");
int lang = 1;
