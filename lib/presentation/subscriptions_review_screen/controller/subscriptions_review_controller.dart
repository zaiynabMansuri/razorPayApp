import 'package:razorpay_x_dhiwise/data/storage/storage_helper.dart';
import 'package:razorpay_x_dhiwise/data/models/subscriptions/post_subscriptions_req.dart';
import '../../../data/models/subscriptions/post_subscriptions_req.dart';
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
    getPlan();

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

  getPlan() async{
    var plan = await StorageHelper.getPlan("Plan_id");
    var totalCount = await StorageHelper.getCount("total_count");
    var quantity = await StorageHelper.getQuantity("quantity");

    var startAt = await StorageHelper.getStartDate("start_at");
    var expireAt = await StorageHelper.getExpireDate("expire_by");
    print("####################33");
    print(startAt);
    print("%%%%%%%%%%%%%%%555");
    print(expireAt);
    var customer_notify = await StorageHelper.getCustomerNotify("customer_notify");
    var notify_phone = await StorageHelper.getMobile("notify_phone");
    var notify_email = await StorageHelper.getEmail("notify_email");
    var noExpiry = await StorageHelper.getNoExpiry("noExpiry");
    var notes = await StorageHelper.getNotes("notes");

    // PostSubscriptionsReq req = PostSubscriptionsReq(
    //   planId: plan,
    //   totalCount: totalCount,
    //   customerNotify: customer_notify? 1 : 0,
    //   expireBy: noExpiry? expireAt : 0,
    //   notes: Notes1(notesKey1:notes),
    //   quantity: quantity,
    //   startAt: startAt,
    //   notifyInfo: NotifyInfo(notifyEmail: notify_email,notifyPhone: notify_phone),
    // );

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