import 'package:cherry_toast/resources/arrays.dart';import 'package:flutter/material.dart';import 'package:cherry_toast/cherry_toast.dart';import '../../constant/text_style.dart';enum MessageState { error, warning, succeed }void customMessages(context,    {required MessageState massageState, required String massage}) {  Text text = Text(    massage,    style: AppTextStyles.style14Bold(),    maxLines: massage.length,  );  Position position = Position.top;  if (massageState == MessageState.succeed) {    return CherryToast.success(      disableToastAnimation: true,      title: text,      inheritThemeColors: true,      toastPosition: position,    ).show(context);  } else if (massageState == MessageState.error) {    return CherryToast.error(      disableToastAnimation: true,      title: text,      inheritThemeColors: true,      toastPosition: position,    ).show(context);  } else {    return CherryToast.info(      disableToastAnimation: true,      title: text,      inheritThemeColors: true,      toastPosition: position,    ).show(context);  }}