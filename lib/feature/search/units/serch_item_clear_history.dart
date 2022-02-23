

part of'../view.dart';

class SearchItemClearHistory extends StatelessWidget {
  const SearchItemClearHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Smart spacker",style: TextStyle(
            color: kGrayColors
        ),),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.close,color: kGrayColors,size: 20,))
      ],
    );
  }
}
