import 'package:e_commerce_app/feature/terms_conditions/units/button_widget.dart';
import 'package:e_commerce_app/feature/terms_conditions/units/clinc.dart';
import 'package:e_commerce_app/feature/terms_conditions/units/on_the_spot.dart';
import 'package:e_commerce_app/feature/terms_conditions/units/text_filed.dart';
import 'package:e_commerce_app/feature/terms_conditions/units/video_call.dart';
import 'package:e_commerce_app/feature/terms_conditions/units/voice_call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsConditionView extends StatefulWidget {
  TermsConditionView({Key? key}) : super(key: key);

  @override
  State<TermsConditionView> createState() => _TermsConditionViewState();
}

class _TermsConditionViewState extends State<TermsConditionView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ClincView(),
              SizedBox(height: 20,),
              VideoCallView(),
              SizedBox(height: 20,),
              VoiceCallView(),
              SizedBox(height: 20,),
              OnTheSpotView(),
            ],
          )
        ],
      ),
    );
  }
}
