import 'package:get/get.dart';
import 'package:razorpay_x_dhiwise/data/models/selectionPopupModel/selection_popup_model.dart';

class SubscriptionsPlanDetailsModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;
}
