import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_x_dhiwise/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj, {this.onTapRowprice});

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapRowprice;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapRowprice!();
        },
        child: Padding(
          padding: getPadding(
            top: 16.0,
            bottom: 16.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: getMargin(
                  top: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: Obx(
                        () => Text( "₹ "+homeItemModelObj.priceOneTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMulishRomanBold16.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        190.00,
                      ),
                      margin: getMargin(
                        top: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "lbl_11_30_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanRegular14.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                              bottom: 9,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVector,
                              height: getSize(
                                2.00,
                              ),
                              width: getSize(
                                2.00,
                              ),
                            ),
                          ),
                          Obx(
                            () => Text(
                              homeItemModelObj.emailTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMulishRomanRegular14.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  left: 124,
                  top: 11,
                  bottom: 11,
                ),
                padding: getPadding(
                  left: 8,
                  top: 7,
                  right: 8,
                  bottom: 7,
                ),
                decoration: AppDecoration.txtOutlineGreen600.copyWith(
                  borderRadius: BorderRadiusStyle.txtCircleBorder13,
                ),
                child: Obx(
                  () => Text(
                    homeItemModelObj.capturedTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMulishRomanSemiBold12.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
