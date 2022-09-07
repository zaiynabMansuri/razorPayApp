import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_link_details_screen/models/subscriptions_link_details_model.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SubscriptionsLinkDetailsController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController timeController1 = TextEditingController();

  Rx<SubscriptionsLinkDetailsModel> subscriptionsLinkDetailsModelObj =
      SubscriptionsLinkDetailsModel().obs;

  RxBool checkbox = false.obs;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

  RxBool checkbox1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    mobileNoController.dispose();
    timeController1.dispose();
  }
}
