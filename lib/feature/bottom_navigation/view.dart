import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cubit.dart';

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
      builder: (context,state){
        return Scaffold(
            body:  BottomNavigationCubit.get(context).screen[BottomNavigationCubit.get(context).curent],

            bottomNavigationBar: BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
              builder: (context,state){
                var cubit=BottomNavigationCubit.get(context);
                return BottomNavigationBar(
                  currentIndex: cubit.curent,
                  backgroundColor: kWhiteColors,
                  selectedFontSize: 0,
                  selectedItemColor: kPrimaryColors,
                  type: BottomNavigationBarType.fixed,
                  elevation: 20,
                  iconSize: 18,
                  selectedIconTheme: IconThemeData(color: kPrimaryColors),
                  onTap:(v){
                    cubit.changeBottom(v);
                  },

                  items: [
                    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home,),label: ""),
                    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.search),label: ""),
                    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cartArrowDown),label: ""),
                    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user),label: ""),
                  ],

                );
              },
            )

        );
      },
    );
  }
}
