import 'controller/transection_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_text_form_field.dart';

class TransectionDetailsScreen extends GetWidget<TransectionDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray104,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Container(
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray900),
                          child: Padding(
                              padding: getPadding(
                                  left: 24, top: 30, right: 200, bottom: 31),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(16.00),
                                                width:
                                                    getHorizontalSize(15.00)))),
                                    Padding(
                                        padding: getPadding(left: 24),
                                        child: Text("msg_transection_det".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMulishRomanBold18
                                                .copyWith()))
                                  ]))),
                      Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 26, right: 16),
                                    child: Text("lbl_amount".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 11, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .transectionDetailsModelObj
                                                          .value
                                                          .priceTxt
                                                          .value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanBold24
                                                          .copyWith()))),
                                              Container(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 7,
                                                      right: 8,
                                                      bottom: 7),
                                                  decoration: AppDecoration
                                                      .txtOutlineBlue700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder13),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .transectionDetailsModelObj
                                                          .value
                                                          .createdTxt
                                                          .value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanSemiBold12Blue700
                                                          .copyWith(
                                                              height: 1.00))))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin:
                                        getMargin(left: 16, top: 10, right: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 13, right: 16),
                                    child: Text("lbl_payment_link".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 9, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtHttpsrzpio();
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "msg_https_rzp_io".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMulishRomanRegular18
                                                              .copyWith(
                                                                  height:
                                                                      1.00)))),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgDownload,
                                                      height: getVerticalSize(
                                                          22.00),
                                                      width: getHorizontalSize(
                                                          19.00)))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 8,
                                        right: 16,
                                        bottom: 23),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 18, right: 16),
                                    child: Text("msg_customer_detail".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMulishRomanBold18Bluegray800
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 28, right: 16),
                                    child: Text("lbl_email_to".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 12, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .transectionDetailsModelObj
                                                          .value
                                                          .emailTxt
                                                          .value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanSemiBold18
                                                          .copyWith(
                                                              height: 1.00)))),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 3),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgDownload,
                                                      height: getVerticalSize(
                                                          22.00),
                                                      width: getHorizontalSize(
                                                          19.00)))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin:
                                        getMargin(left: 16, top: 8, right: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 11, right: 16),
                                    child: Text("lbl_sms_to".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 12, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 2, bottom: 1),
                                                  child: Obx(() => Text(
                                                      controller
                                                          .transectionDetailsModelObj
                                                          .value
                                                          .mobileNoTxt
                                                          .value,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanSemiBold18
                                                          .copyWith(
                                                              height: 1.00)))),
                                              CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgDownload,
                                                  height:
                                                      getVerticalSize(22.00),
                                                  width:
                                                      getHorizontalSize(19.00))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 11,
                                        right: 16,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 16, bottom: 20),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 18, right: 16),
                                    child: Text("msg_additional_deta".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMulishRomanBold18Bluegray800
                                            .copyWith())),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 30, right: 16),
                                    child: Text("lbl_expiry_date".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                CustomTextFormField(
                                    width: 396,
                                    focusNode: FocusNode(),
                                    controller: controller.timeController2,
                                    hintText: "msg_25_may_2022_05".tr,
                                    margin:
                                        getMargin(left: 16, top: 15, right: 16),
                                    variant:
                                        TextFormFieldVariant.UnderLineGray300,
                                    padding: TextFormFieldPadding.PaddingB8,
                                    fontStyle: TextFormFieldFontStyle
                                        .MulishRomanSemiBold18,
                                    alignment: Alignment.center),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin:
                                        getMargin(left: 16, top: 7, right: 16),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300)),
                                Padding(
                                    padding:
                                        getPadding(left: 16, top: 9, right: 16),
                                    child: Text("lbl_created_on".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMulishRomanSemiBold16
                                            .copyWith(height: 1.00))),
                                CustomTextFormField(
                                    width: 396,
                                    focusNode: FocusNode(),
                                    controller: controller.timeOneController1,
                                    hintText: "msg_19_may_2022_06".tr,
                                    margin:
                                        getMargin(left: 16, top: 17, right: 16),
                                    variant:
                                        TextFormFieldVariant.UnderLineGray300,
                                    padding: TextFormFieldPadding.PaddingB8,
                                    fontStyle: TextFormFieldFontStyle
                                        .MulishRomanSemiBold18,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(396.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 7,
                                        right: 16,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ]))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtHttpsrzpio() async {
    var url = 'https://rzp.io/i/zDUkgVHQ';
    if (!await launch(url)) {
      throw 'Could not launch https://rzp.io/i/zDUkgVHQ';
    }
  }
}
