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

  var plan;
  var totalCount;
  var quantity;
  var startAt;
  var expireAt;
  var customer_notify;
  var notify_phone;
  var notify_email;
  var noExpiry;
  var notes;
  var planName;
  var amount;
  var firstPayment;


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

  getPlan() async {
    plan = await StorageHelper.getPlan("Plan_id");
    totalCount = await StorageHelper.getCount("total_count");
    quantity = await StorageHelper.getQuantity("quantity");
    planName = await StorageHelper.getPlanName("planName");
    startAt = await StorageHelper.getStartDate("start_at");
    expireAt = await StorageHelper.getExpireDate("expire_by");
    customer_notify = await StorageHelper.getCustomerNotify("customer_notify");
    notify_phone = await StorageHelper.getMobile("notify_phone");
    notify_email = await StorageHelper.getEmail("notify_email");
    noExpiry = await StorageHelper.getNoExpiry("noExpiry");
    notes = await StorageHelper.getNotes("notes");
    amount = await StorageHelper.getAmount("Amount");
    print(amount);
    print(quantity);
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
