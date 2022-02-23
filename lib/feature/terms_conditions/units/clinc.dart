import 'package:e_commerce_app/feature/terms_conditions/units/button_widget.dart';
import 'package:e_commerce_app/feature/terms_conditions/units/text_filed.dart';
import 'package:flutter/material.dart';

class ClincView extends StatefulWidget {
  const ClincView({Key? key}) : super(key: key);

  @override
  _ClincViewState createState() => _ClincViewState();
}

class _ClincViewState extends State<ClincView> {
  bool _customTileExpanded = false;

  bool val = false;
  final items = ['day','One', 'Two', 'Three', 'Four'];
  String selectedValue = 'day';
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.all(4),
      borderOnForeground: true,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ExpansionTile(
          title: Text('Clinc'),
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: [

            ListTile(
              title: Text('Activation'),
              subtitle: Text(
                val?'on':'off',style: TextStyle(
                  color: val?Colors.blue:Colors.grey,
                  fontSize: 17
              ),),
              trailing: Transform.scale(
                scale: 2,
                transformHitTests: true,
                child: SizedBox(
                  width: 50,
                  child: Switch(
                    trackColor:
                    MaterialStateProperty.all(Colors.grey),

                    // thumb colors
                    activeColor: Colors.blue,
                    inactiveThumbColor: Colors.grey,

                    onChanged: (value) {
                      setState(() {
                        val=value;
                      });
                    },
                    value: val,

                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Pricing'),
              subtitle:Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Text('add price')),
                    Expanded(
                        flex: 1,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            suffixText: 'EGP',
                            suffixStyle: TextStyle(color: Colors.grey,   fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('Availiable'),
              ),
              subtitle:    Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container
                  (
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),



                  // dropdown below..
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text('day'),
                      isExpanded: true,
                      iconSize: 30,

                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ),
              ),

            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: Text('Day shift'),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(children: [
                  Expanded(
                      child: TextFiledWidget(
                        colorborder: Colors.black12,
                        enable: false,
                        hint: 'from',
                        icon: Icon(Icons.timer_outlined),

                      )
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                      child: TextFiledWidget(
                        colorborder: Colors.black12,
                        enable: false,
                        hint: 'to',

                        icon: Icon(Icons.timer_outlined),

                      )
                  ),
                ],),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: Text('Night shift'),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(children: [
                  Expanded(
                      child: TextFiledWidget(
                        colorborder: Colors.black12,
                        enable: false,
                        hint: 'from',
                        icon: Icon(Icons.timer_outlined),

                      )
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                      child: TextFiledWidget(
                        colorborder: Colors.black12,
                        enable: false,
                        hint: 'to',

                        icon: Icon(Icons.timer_outlined),

                      )
                  ),
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.add,color: Colors.white,)),

                  ),
                  ButtonCustomWidget(
                    ontap: (){},
                    txet: 'Save Setting',
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,

                  )
                ],
              ),
            )





          ],
        ),
      ),
    );
  }
}
