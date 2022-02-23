
part of '../view.dart';




class FloatAction extends StatelessWidget {
  const FloatAction({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cubit=OnBorderCubit.get(context);
    return BlocBuilder<OnBorderCubit,OnBorderStae>(
      builder: (context,state){
        var cubit=OnBorderCubit.get(context);
        return   FloatingActionButton(
          backgroundColor: kPrimaryColors,
          onPressed: (){
            if(cubit.isLast){
              cubit.submit();
            }else{
              cubit.borderConteler.nextPage(
                  duration: Duration(milliseconds: 750),
                  curve: Curves.fastLinearToSlowEaseIn);
            }

          },
          child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30,),
        );
      },

    );
  }
}
