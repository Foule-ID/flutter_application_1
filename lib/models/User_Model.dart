// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    final int page;
    final int perPage;
    final int total;
    final int totalPages;
    final List<UserData> data;
    final Support support;
    final Meta meta;

    UserModel({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
        required this.meta,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<UserData>.from(json["data"].map((x) => UserData.fromJson(x))),
        support: Support.fromJson(json["support"]),
        meta: Meta.fromJson(json["_meta"]),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
        "_meta": meta.toJson(),
    };
}

class UserData {
    final int id;
    final String email;
    final String firstName;
    final String lastName;
    final String avatar;

    UserData({
        required this.id,
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.avatar,
    });

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
    };
}

class Meta {
    final String poweredBy;
    final String docsUrl;
    final String upgradeUrl;
    final String exampleUrl;
    final String variant;
    final String message;
    final Cta cta;
    final String context;

    Meta({
        required this.poweredBy,
        required this.docsUrl,
        required this.upgradeUrl,
        required this.exampleUrl,
        required this.variant,
        required this.message,
        required this.cta,
        required this.context,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        poweredBy: json["powered_by"],
        docsUrl: json["docs_url"],
        upgradeUrl: json["upgrade_url"],
        exampleUrl: json["example_url"],
        variant: json["variant"],
        message: json["message"],
        cta: Cta.fromJson(json["cta"]),
        context: json["context"],
    );

    Map<String, dynamic> toJson() => {
        "powered_by": poweredBy,
        "docs_url": docsUrl,
        "upgrade_url": upgradeUrl,
        "example_url": exampleUrl,
        "variant": variant,
        "message": message,
        "cta": cta.toJson(),
        "context": context,
    };
}

class Cta {
    final String label;
    final String url;

    Cta({
        required this.label,
        required this.url,
    });

    factory Cta.fromJson(Map<String, dynamic> json) => Cta(
        label: json["label"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "url": url,
    };
}

class Support {
    final String url;
    final String text;
    final String sponsoredBy;

    Support({
        required this.url,
        required this.text,
        required this.sponsoredBy,
    });

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
        sponsoredBy: json["sponsored_by"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
        "sponsored_by": sponsoredBy,
    };
}
