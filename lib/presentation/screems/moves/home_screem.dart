import 'package:cine/config/const/environment.dart';
import 'package:flutter/material.dart';

import '../../../config/constants/environment.dart';


class HomeScreem extends StatelessWidget {
  static const name='home-screem';
  const HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text(Environment.theMovieKey),
      ),
    );
  }
}
