import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_screen/models/subscriptions_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/subscriptions/get_subscriptions_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';

class SubscriptionsController extends GetxController {
  Rx<SubscriptionsModel> subscriptionsModelObj = SubscriptionsModel().obs;

  GetSubscriptionsResp getSubscriptionsResp = GetSubscriptionsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchSubscriptions(
      successCall: _onFetchSubscriptionsSuccess,
      errCall: _onFetchSubscriptionsError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchSubscriptions(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchSubscriptions(
        headers: {
          'Authorization':
              'Basic cnpwX3Rlc3RfUjhVVEZTMXFuRXZhVFE6dDZkalNkOVhpSFg5RFpPeU5rbU4xM05L',
        },
        onSuccess: (resp) {
          onFetchSubscriptionsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchSubscriptionsError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchSubscriptionsSuccess(var response) {
    getSubscriptionsResp = GetSubscriptionsResp.fromJson(response);
  }

  void onFetchSubscriptionsError(var err) {
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

  void _onFetchSubscriptionsSuccess() {}
  void _onFetchSubscriptionsError() {}
}
