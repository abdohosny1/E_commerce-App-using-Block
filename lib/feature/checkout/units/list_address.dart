class CheckBoxListTileAddress {
  int? userId;
  String? title;
  bool? isCheck;

  CheckBoxListTileAddress({this.userId, this.title, this.isCheck});

  static List<CheckBoxListTileAddress> getUsers() {
    return <CheckBoxListTileAddress>[
      CheckBoxListTileAddress(
          userId: 1,
          title: "Work",
          isCheck: false),
      CheckBoxListTileAddress(
          userId: 2,
          title: "Home",
          isCheck: false),
      CheckBoxListTileAddress(
          userId: 3,
          title: "Cafe",
          isCheck: false),

    ];
  }
}