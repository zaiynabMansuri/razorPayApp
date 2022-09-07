class PostSubscriptionsReq {
  String? planId;
  int? totalCount;
  int? quantity;
  int? startAt;
  int? expireBy;
  int? customerNotify;
  List<Addons>? addons;
  Notes? notes;

  PostSubscriptionsReq(
      {this.planId,
      this.totalCount,
      this.quantity,
      this.startAt,
      this.expireBy,
      this.customerNotify,
      this.addons,
      this.notes});

  PostSubscriptionsReq.fromJson(Map<String, dynamic> json) {
    planId = json['plan_id'];
    totalCount = json['total_count'];
    quantity = json['quantity'];
    startAt = json['start_at'];
    expireBy = json['expire_by'];
    customerNotify = json['customer_notify'];
    if (json['addons'] != null) {
      addons = <Addons>[];
      json['addons'].forEach((v) {
        addons?.add(Addons.fromJson(v));
      });
    }
    notes = json['notes'] != null ? Notes.fromJson(json['notes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.planId != null) {
      data['plan_id'] = this.planId;
    }
    if (this.totalCount != null) {
      data['total_count'] = this.totalCount;
    }
    if (this.quantity != null) {
      data['quantity'] = this.quantity;
    }
    if (this.startAt != null) {
      data['start_at'] = this.startAt;
    }
    if (this.expireBy != null) {
      data['expire_by'] = this.expireBy;
    }
    if (this.customerNotify != null) {
      data['customer_notify'] = this.customerNotify;
    }
    if (this.addons != null) {
      data['addons'] = this.addons?.map((v) => v.toJson()).toList();
    }
    if (this.notes != null) {
      data['notes'] = this.notes?.toJson();
    }
    return data;
  }
}

class Addons {
  Item? item;

  Addons({this.item});

  Addons.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null ? Item.fromJson(json['item']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.item != null) {
      data['item'] = this.item?.toJson();
    }
    return data;
  }
}

class Item {
  String? name;
  int? amount;
  String? currency;

  Item({this.name, this.amount, this.currency});

  Item.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    amount = json['amount'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.currency != null) {
      data['currency'] = this.currency;
    }
    return data;
  }
}

class Notes {
  String? notesKey1;
  String? notesKey2;

  Notes({this.notesKey1, this.notesKey2});

  Notes.fromJson(Map<String, dynamic> json) {
    notesKey1 = json['notes_key_1'];
    notesKey2 = json['notes_key_2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.notesKey1 != null) {
      data['notes_key_1'] = this.notesKey1;
    }
    if (this.notesKey2 != null) {
      data['notes_key_2'] = this.notesKey2;
    }
    return data;
  }
}
