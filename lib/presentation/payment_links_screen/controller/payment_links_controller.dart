import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/payment_links_screen/models/payment_links_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/v1PaymentLinks/get_v1_payment_links_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';

class PaymentLinksController extends GetxController {
  Rx<PaymentLinksModel> paymentLinksModelObj = PaymentLinksModel().obs;

  GetV1PaymentLinksResp getV1PaymentLinksResp = GetV1PaymentLinksResp();

  @override
  void onReady() {
    super.onReady();
    Map<String, dynamic> queryParams = {};
    this.callFetchV1PaymentLinks(
      successCall: _onFetchV1PaymentLinksSuccess,
      errCall: _onFetchV1PaymentLinksError,
      queryParams: queryParams,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchV1PaymentLinks(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      Map<String, dynamic> queryParams = const {}}) async {
    return Get.find<ApiClient>().fetchV1PaymentLinks(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Basic cnpwX3Rlc3RfUjhVVEZTMXFuRXZhVFE6dDZkalNkOVhpSFg5RFpPeU5rbU4xM05L',
        },
        onSuccess: (resp) {
          onFetchV1PaymentLinksSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchV1PaymentLinksError(err);
          if (errCall != null) {
            errCall();
          }
        },
        queryParams: queryParams);
  }

  void onFetchV1PaymentLinksSuccess(var response) {
    getV1PaymentLinksResp = GetV1PaymentLinksResp.fromJson(response);
  }

  void onFetchV1PaymentLinksError(var err) {
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

  void _onFetchV1PaymentLinksSuccess() {}
  void _onFetchV1PaymentLinksError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Auth Error",
        middleText: "Check Your Web Portal, Something bad happen.");
  }
}
