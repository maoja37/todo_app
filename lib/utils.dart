// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static void showSnackBar(BuildContext context, String text) =>
      Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(text),
          ),
        );
        static DateTime toDateTime(Timestamp value){
          

          return value.toDate();
        }

        static dynamic fromDateTimetoJson(DateTime date){
          if(date == null) return null;

          return date.toUtc();
        }
}
