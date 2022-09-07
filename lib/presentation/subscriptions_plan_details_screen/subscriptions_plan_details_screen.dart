import 'controller/subscriptions_plan_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_button.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_drop_down.dart';
import 'package:razorpay_x_dhiwise/widgets/custom_icon_button.dart';

class SubscriptionsPlanDetailsScreen
    extends GetWidget<SubscriptionsPlanDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray104,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(bottom: 30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray900),
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24,
                                          top: 31,
                                          right: 199,
                                          bottom: 28),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: getVerticalSize(
                                                            16.00),
                                                        width:
                                                            getHorizontalSize(
                                                                15.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 24, top: 1),
                                                child: Text(
                                                    "msg_create_subscrip".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMulishRomanSemiBold18WhiteA700
                                                        .copyWith()))
                                          ]))),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 23),
                                  decoration: AppDecoration.fillGray104,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, right: 16),
                                                child: Text(
                                                    "msg_provide_details".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMulishRomanMedium16Bluegray500
                                                        .copyWith(
                                                            height: 1.00)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 28,
                                                    right: 16),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup292,
                                                    height:
                                                        getVerticalSize(24.00),
                                                    width: getHorizontalSize(
                                                        360.00)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 18,
                                                    right: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_plan_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16Bluegray800
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_link_details"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16Bluegray800
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 17),
                                                          child: Text(
                                                              "lbl_review".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold16Bluegray800
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 38,
                                                    right: 16),
                                                child: Text(
                                                    "lbl_plan_details".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMulishRomanBold18Blue700
                                                        .copyWith()))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 18),
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 26,
                                                              right: 16),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_select_plan2"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .bluegray800,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Mulish',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: 1.25)),
                                                                    TextSpan(
                                                                        text: "lbl"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .red700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Mulish',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: 1.25))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)),
                                                      CustomDropDown(
                                                          width: 396,
                                                          focusNode:
                                                              FocusNode(),
                                                          icon: Container(
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  right: 17),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowdownBlack901)),
                                                          hintText:
                                                              "lbl_test_1".tr,
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 10,
                                                              right: 16),
                                                          alignment:
                                                              Alignment.center,
                                                          items: controller
                                                              .subscriptionsPlanDetailsModelObj
                                                              .value
                                                              .dropdownItemList,
                                                          onChanged: (value) {
                                                            controller
                                                                .onSelected(
                                                                    value);
                                                          }),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 8,
                                                                      right:
                                                                          16),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                14,
                                                                            bottom:
                                                                                13),
                                                                        child: Text(
                                                                            "lbl_15_00"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanSemiBold16.copyWith(height: 1.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                18,
                                                                            bottom:
                                                                                17),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgClose8X8,
                                                                            height: getSize(8.00),
                                                                            width: getSize(8.00))),
                                                                    Container(
                                                                        padding: getPadding(
                                                                            left:
                                                                                12,
                                                                            top:
                                                                                14,
                                                                            bottom:
                                                                                13),
                                                                        decoration: AppDecoration.txtOutlineGray300.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtRoundedBorder4),
                                                                        child: Text(
                                                                            "lbl_1"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanMedium16Bluegray800.copyWith(height: 1.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                16,
                                                                            bottom:
                                                                                11),
                                                                        child: Text(
                                                                            "lbl_quantity"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanSemiBold16.copyWith(height: 1.00)))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 8,
                                                              right: 16,
                                                              bottom: 24),
                                                          child: Text(
                                                              "msg_every_week_cust"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold14Bluegray500
                                                                  .copyWith(
                                                                      height:
                                                                          1.00)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 16),
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 26,
                                                              right: 16),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_start_date2"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .bluegray800,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Mulish',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: 1.25)),
                                                                    TextSpan(
                                                                        text: "lbl"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .red700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Mulish',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: 1.25))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 16,
                                                              right: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 16,
                                                                    width: 16,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            22),
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillBlue700,
                                                                    shape: IconButtonShape
                                                                        .RoundedBorder2,
                                                                    padding:
                                                                        IconButtonPadding
                                                                            .PaddingAll4,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgGroup44)),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        333.00),
                                                                    margin: getMargin(
                                                                        left: 8,
                                                                        top: 2),
                                                                    child: Text(
                                                                        "msg_immediate_subs"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtMulishRomanSemiBold16
                                                                            .copyWith(height: 1.25)))
                                                              ])),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 12,
                                                                  right: 16),
                                                              decoration: AppDecoration
                                                                  .outlineBluegray101
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder8),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                13,
                                                                            top:
                                                                                12,
                                                                            bottom:
                                                                                12),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgCalendar,
                                                                            height: getVerticalSize(18.00),
                                                                            width: getHorizontalSize(16.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                13,
                                                                            top:
                                                                                14,
                                                                            bottom:
                                                                                13),
                                                                        child: Text(
                                                                            "lbl_dd_mm_yyyy"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtMulishRomanMedium16Bluegray300.copyWith(height: 1.00)))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 16,
                                                              right: 16,
                                                              bottom: 24),
                                                          child: Text(
                                                              "msg_date_from_which"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold14Bluegray500
                                                                  .copyWith(
                                                                      height:
                                                                          1.00)))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 16),
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 26,
                                                              right: 16),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_total_count2"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .bluegray800,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Mulish',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: 1.25)),
                                                                    TextSpan(
                                                                        text: "lbl"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .red700,
                                                                            fontSize: getFontSize(
                                                                                16),
                                                                            fontFamily:
                                                                                'Mulish',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            height: 1.25))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 14,
                                                                  right: 16),
                                                              padding: getPadding(
                                                                  left: 12,
                                                                  top: 14,
                                                                  bottom: 13),
                                                              decoration: AppDecoration
                                                                  .txtOutlineGray300
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder4),
                                                              child: Text(
                                                                  "lbl_1".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtMulishRomanMedium16Bluegray800
                                                                      .copyWith(
                                                                          height:
                                                                              1.00)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 12,
                                                              right: 16,
                                                              bottom: 24),
                                                          child: Text(
                                                              "msg_no_of_billing"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMulishRomanSemiBold14Bluegray500
                                                                  .copyWith(
                                                                      height:
                                                                          1.00)))
                                                    ]))),
                                        CustomButton(
                                            width: 190,
                                            text: "lbl_next".tr,
                                            margin: getMargin(
                                                left: 16, top: 22, right: 16),
                                            variant: ButtonVariant.FillBlue700,
                                            shape: ButtonShape.Square,
                                            padding: ButtonPadding.PaddingAll17,
                                            fontStyle: ButtonFontStyle
                                                .MulishRomanMedium18,
                                            onTap: onTapBtnNext,
                                            alignment: Alignment.centerRight)
                                      ]))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.subscriptionsLinkDetailsScreen);
  }
}
