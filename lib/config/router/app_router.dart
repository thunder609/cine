

import 'dart:js';

import 'package:cine/presentation/screems/moves/home_screem.dart';
import 'package:go_router/go_router.dart';

final appRouter= GoRouter(
  initialLocation: '/',
  routes:[
    GoRoute(path:'/',
    name:HomeScreem.name,
    builder: (context,state)=>const HomeScreem(),),

  ]
);