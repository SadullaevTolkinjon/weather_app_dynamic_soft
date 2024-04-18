import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather_app_dynamic/constants/color/color_const.dart';

class SnackbarWidgets {
  static showError(String key) => Fluttertoast.showToast(
        msg: key,
        toastLength:  Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColor.kRed,
        textColor: AppColor.white,
        fontSize: 16.0,
      );
  static showSuccess(String key) => Fluttertoast.showToast(
        msg: key,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColor.green,
        textColor: AppColor.white,
        fontSize: 16.0,
      );
  static showInfo(String key) => Fluttertoast.showToast(
        msg: key,
        toastLength: Toast.LENGTH_LONG,
        gravity:  ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColor.blue,
        textColor: AppColor.white,
        fontSize: 16.0,
      );
}
