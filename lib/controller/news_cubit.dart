import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../views/Business_screen/business_view.dart';
import '../views/science_screen/science_view.dart';
import '../views/sports_screen/sports_view.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
   static NewsCubit get(BuildContext context)=>BlocProvider.of(context);
   int selectedItem = 0;
   List <BottomNavigationBarItem>bottomItems=[
    const  BottomNavigationBarItem(
         icon: Icon(Icons.business), label: 'Business'),
     const BottomNavigationBarItem(
         icon: Icon(Icons.science_outlined), label: 'Science'),
    const  BottomNavigationBarItem(
         icon: Icon(Icons.sports_soccer), label: 'Sports'),
   ];
   List<Widget> layOut = <Widget>[
    const BusinessView(),
    const  ScienceView(),

    const SportsView()
  ];
   onItemTapped(int index){
    selectedItem=index;
emit(NewsBottomNav());
  }


}
