class CheckBoxListTileModel {
  int? userId;
  String? img;
  String? title;
  bool? isCheck;

  CheckBoxListTileModel({this.userId, this.img, this.title, this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/money.png',
          title: "Cash",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/card.png',
          title: "Cedit card",
          isCheck: false),

    ];
  }
}