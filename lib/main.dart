import 'package:flutter/material.dart';
import 'package:xylophone/pages/XylophonePages.dart';

void main()=>runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  routes: {

    '/':(context)=>XylophonePages(),
  },
));