library uiexpress.notifications;

import 'package:flutter/material.dart';


class UIENotifications{
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackError(
      context,String? message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message??" * ", style: const TextStyle(color: Colors.white),),
            duration: const Duration(seconds: 5),
            backgroundColor: Colors.pink
        ),
      );
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackSuccess(
      context, String? message, { int? ms}) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message??" * ", style: const TextStyle(color: Colors.white),),
            duration: Duration(milliseconds: ms ?? 2000),
            backgroundColor: Colors.teal.shade400
        ),
      );

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackWarning(
      context, String? message, { int? ms}) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message??" * ", style: const TextStyle(color: Colors.white),),
            duration: Duration(milliseconds: ms ?? 2000),
            backgroundColor: Colors.amber.shade600
        ),
      );
}