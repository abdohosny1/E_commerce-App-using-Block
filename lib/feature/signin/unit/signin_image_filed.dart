part of'../view.dart';
class ImageFiled extends StatelessWidget {
  const ImageFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset('assets/images/trademark.png',
            width: 100,
          //  color: kWhiteColors,
      ),
        ),
        SizedBox(height: 10,),
        Text('ROKEE',style: TextStyle(color: kWhiteColors,fontWeight: FontWeight.w700
        ,fontSize: 20),),
      ],
    );
  }
}
