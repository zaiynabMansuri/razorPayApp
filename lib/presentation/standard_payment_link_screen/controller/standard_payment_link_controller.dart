import '/core/app_export.dart';
import 'package:razorpay_x_dhiwise/presentation/standard_payment_link_screen/models/standard_payment_link_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/data/models/paymentLinks/post_payment_links_resp.dart';
import 'package:razorpay_x_dhiwise/data/apiClient/api_client.dart';

class StandardPaymentLinkController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  TextEditingController mobileNoController1 = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  Rx<StandardPaymentLinkModel> standardPaymentLinkModelObj =
      StandardPaymentLinkModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  RxBool checkbox2 = false.obs;

  RxBool checkbox3 = false.obs;

  PostPaymentLinksResp postPaymentLinksResp = PostPaymentLinksResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    emailController1.dispose();
    mobileNoController1.dispose();
    inputFieldOneController.dispose();
  }

  void callCreatePaymentLinks(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createPaymentLinks(
        headers: {
          'Authorization':
              'Basic cnpwX3Rlc3RfUjhVVEZTMXFuRXZhVFE6dDZkalNkOVhpSFg5RFpPeU5rbU4xM05L',
        },
        onSuccess: (resp) {
          onCreatePaymentLinksSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreatePaymentLinksError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreatePaymentLinksSuccess(var response) {
    postPaymentLinksResp = PostPaymentLinksResp.fromJson(response);
  }

  void onCreatePaymentLinksError(var err) {
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
