import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_plan_details_screen/models/subscriptions_plan_details_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/plans/get_plans_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';

class SubscriptionsPlanDetailsController extends GetxController {
  Rx<SubscriptionsPlanDetailsModel> subscriptionsPlanDetailsModelObj =
      SubscriptionsPlanDetailsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  GetPlansResp getPlansResp = GetPlansResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchPlans(
      successCall: _onFetchPlansSuccess,
      errCall: _onFetchPlansError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    subscriptionsPlanDetailsModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    subscriptionsPlanDetailsModelObj.value.dropdownItemList.refresh();
  }

  void callFetchPlans(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchPlans(
        headers: {
          'Content-type': 'application/json',
          'Authorization':
              'Basic cnpwX3Rlc3RfUjhVVEZTMXFuRXZhVFE6dDZkalNkOVhpSFg5RFpPeU5rbU4xM05L',
        },
        onSuccess: (resp) {
          onFetchPlansSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchPlansError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchPlansSuccess(var response) {
    getPlansResp = GetPlansResp.fromJson(response);
  }

  void onFetchPlansError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchPlansSuccess() {}
  void _onFetchPlansError() {}
}
