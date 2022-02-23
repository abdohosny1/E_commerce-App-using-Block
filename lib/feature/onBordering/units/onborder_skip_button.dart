

part of '../view.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          BlocBuilder<OnBorderCubit,OnBorderStae>(
              builder:(context,state){
                var cubit=OnBorderCubit.get(context);
              return  TextButton(
                    onPressed: (){
                      if(cubit.isLast){
                        cubit.submit();
                      }else{
                        cubit.borderConteler.nextPage(
                            duration: Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn);
                      }

                    },
                    child: Text(
                      'Next',style: TextStyle(color:kWhiteColors,fontSize: 20,fontWeight: FontWeight.w600),));
              }),
          ],
        )
      ],
    );
  }
}
