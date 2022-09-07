class GetV1PaymentLinksResp {
  List<PaymentLinks>? paymentLinks;

  GetV1PaymentLinksResp({this.paymentLinks});

  GetV1PaymentLinksResp.fromJson(Map<String, dynamic> json) {
    if (json['payment_links'] != null) {
      paymentLinks = <PaymentLinks>[];
      json['payment_links'].forEach((v) {
        paymentLinks?.add(PaymentLinks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.paymentLinks != null) {
      data['payment_links'] =
          this.paymentLinks?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaymentLinks {
  bool? acceptPartial;
  int? amount;
  int? amountPaid;
  String? callbackMethod;
  String? callbackUrl;
  int? cancelledAt;
  int? createdAt;
  String? currency;
  Customer? customer;
  String? description;
  int? expireBy;
  int? expiredAt;
  int? firstMinPartialAmount;
  String? id;
  Notes? notes;
  Notify? notify;
  String? orderId;
  List? payments;
  String? referenceId;
  bool? reminderEnable;
  Reminders? reminders;
  String? shortUrl;
  String? status;
  int? updatedAt;
  bool? upiLink;
  String? userId;

  PaymentLinks(
      {this.acceptPartial,
      this.amount,
      this.amountPaid,
      this.callbackMethod,
      this.callbackUrl,
      this.cancelledAt,
      this.createdAt,
      this.currency,
      this.customer,
      this.description,
      this.expireBy,
      this.expiredAt,
      this.firstMinPartialAmount,
      this.id,
      this.notes,
      this.notify,
      this.orderId,
      this.payments,
      this.referenceId,
      this.reminderEnable,
      this.reminders,
      this.shortUrl,
      this.status,
      this.updatedAt,
      this.upiLink,
      this.userId});

  PaymentLinks.fromJson(Map<String, dynamic> json) {
    acceptPartial = json['accept_partial'];
    amount = json['amount'];
    amountPaid = json['amount_paid'];
    callbackMethod = json['callback_method'];
    callbackUrl = json['callback_url'];
    cancelledAt = json['cancelled_at'];
    createdAt = json['created_at'];
    currency = json['currency'];
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    description = json['description'];
    expireBy = json['expire_by'];
    expiredAt = json['expired_at'];
    firstMinPartialAmount = json['first_min_partial_amount'];
    id = json['id'];
    notes = json['notes'] != null ? Notes.fromJson(json['notes']) : null;
    notify = json['notify'] != null ? Notify.fromJson(json['notify']) : null;
    orderId = json['order_id'];
    if (json['payments'] != null) {
      payments = [];
      json['payments'].forEach((v) {
        payments?.add(v);
      });
    }
    referenceId = json['reference_id'];
    reminderEnable = json['reminder_enable'];
    reminders = json['reminders'] != null
        ? Reminders.fromJson(json['reminders'])
        : null;
    shortUrl = json['short_url'];
    status = json['status'];
    updatedAt = json['updated_at'];
    upiLink = json['upi_link'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.acceptPartial != null) {
      data['accept_partial'] = this.acceptPartial;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.amountPaid != null) {
      data['amount_paid'] = this.amountPaid;
    }
    if (this.callbackMethod != null) {
      data['callback_method'] = this.callbackMethod;
    }
    if (this.callbackUrl != null) {
      data['callback_url'] = this.callbackUrl;
    }
    if (this.cancelledAt != null) {
      data['cancelled_at'] = this.cancelledAt;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.currency != null) {
      data['currency'] = this.currency;
    }
    if (this.customer != null) {
      data['customer'] = this.customer?.toJson();
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.expireBy != null) {
      data['expire_by'] = this.expireBy;
    }
    if (this.expiredAt != null) {
      data['expired_at'] = this.expiredAt;
    }
    if (this.firstMinPartialAmount != null) {
      data['first_min_partial_amount'] = this.firstMinPartialAmount;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.notes != null) {
      data['notes'] = this.notes?.toJson();
    }
    if (this.notify != null) {
      data['notify'] = this.notify?.toJson();
    }
    if (this.orderId != null) {
      data['order_id'] = this.orderId;
    }
    if (this.payments != null) {
      data['payments'] = this.payments?.map((v) => v).toList();
    }
    if (this.referenceId != null) {
      data['reference_id'] = this.referenceId;
    }
    if (this.reminderEnable != null) {
      data['reminder_enable'] = this.reminderEnable;
    }
    if (this.reminders != null) {
      data['reminders'] = this.reminders?.toJson();
    }
    if (this.shortUrl != null) {
      data['short_url'] = this.shortUrl;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.upiLink != null) {
      data['upi_link'] = this.upiLink;
    }
    if (this.userId != null) {
      data['user_id'] = this.userId;
    }
    return data;
  }
}

class Customer {
  String? contact;
  String? email;
  String? name;

  Customer({this.contact, this.email, this.name});

  Customer.fromJson(Map<String, dynamic> json) {
    contact = json['contact'];
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.contact != null) {
      data['contact'] = this.contact;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    return data;
  }
}

class Notes {
  String? policyName;

  Notes({this.policyName});

  Notes.fromJson(Map<String, dynamic> json) {
    policyName = json['policy_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.policyName != null) {
      data['policy_name'] = this.policyName;
    }
    return data;
  }
}

class Notify {
  bool? email;
  bool? sms;

  Notify({this.email, this.sms});

  Notify.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    sms = json['sms'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.sms != null) {
      data['sms'] = this.sms;
    }
    return data;
  }
}

class Reminders {
  String? status;

  Reminders({this.status});

  Reminders.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    return data;
  }
}
