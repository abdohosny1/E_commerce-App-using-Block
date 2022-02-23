part of'../view.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: Validator.userName,
      decoration: InputDecoration(
        hintText: "What are you doing for ?",
        filled: true,
        fillColor: kEditTextColors,
        hintStyle: TextStyle(color: kPrimaryColors),
        prefixIcon: Icon(Icons.search,color: kPrimaryColors,),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: kEditTextColors)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: kEditTextColors)
        ),
      ),
    );
  }
}
