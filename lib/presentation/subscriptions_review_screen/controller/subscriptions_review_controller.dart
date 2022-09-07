import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/subscriptions_review_screen/models/subscriptions_review_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/subscriptions/post_subscriptions_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';

class SubscriptionsReviewController extends GetxController {
  Rx<SubscriptionsReviewModel> subscriptionsReviewModelObj =
      SubscriptionsReviewModel().obs;

  PostSubscriptionsResp postSubscriptionsResp = PostSubscriptionsResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateSubscriptions(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSubscriptions(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Basic cnpwX3Rlc3RfUjhVVEZTMXFuRXZhVFE6dDZkalNkOVhpSFg5RFpPeU5rbU4xM05L',
        },
        onSuccess: (resp) {
          onCreateSubscriptionsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateSubscriptionsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateSubscriptionsSuccess(var response) {
    postSubscriptionsResp = PostSubscriptionsResp.fromJson(response);
  }

  void onCreateSubscriptionsError(var err) {
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
}
