import 'package:e_commerce_app/const/style.dart';
import 'package:flutter/material.dart';

class CartItemDetails extends StatelessWidget {
  const CartItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Dismissible(
      key: UniqueKey(),
      onDismissed: (dir){



      },
      background: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Text("Delete",style: TextStyle(
                color: Colors.red,fontSize: 20,fontWeight: FontWeight.w700
            ),),
            SizedBox(width: 20 ,),
            Icon(Icons.close,color: Colors.red,)
          ],
        ),

      ),

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width-90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black12
              ),
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    child: Image.asset("assets/images/pro2.png",
                      fit:BoxFit.cover ,

                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Airpods pro",style: style_Categories,),
                      SizedBox(height: 5,),
                      Text("USD 249",style: style_text_price,),
                      Spacer(),
                      Text("Total : USD 258",style: style_text_price,)
                    ],
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Column(

            mainAxisSize: MainAxisSize.min,

            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.add_circle_outline)),
              Text("1x"),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.remove_circle_outline)),

            ],
          )
        ],
      ),
    );
  }
}
