import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/feature/search/units/search_item_last_viewed.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FavouritView extends StatelessWidget {
  const FavouritView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text("Favourit",style: style_Heder,),
            SizedBox(height: 15,),

            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context,index){
                    return    Dismissible(
                        key: UniqueKey(),
                        onDismissed: (dir){


                        },
                        background: Container(
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

                        child: SearchItemLastViewed());
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
