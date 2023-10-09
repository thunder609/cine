
import 'package:cine/presentation/provider/movies/movies_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/constants/environment.dart';


class HomeScreem extends StatelessWidget {
  static const name='home-screem';
  const HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomeView()
    );
  }
}

class _HomeView  extends ConsumerStatefulWidget {
  const _HomeView();

  @override
 _HomeViewState createState() => _HomeViewState();
}


class _HomeViewState  extends ConsumerState<_HomeView>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    if (nowPlayingMovies.length==0) return CircularProgressIndicator();
      return ListView.builder(
        itemCount: nowPlayingMovies.length,
        itemBuilder: (context, index) {
          final movie=nowPlayingMovies[index];
        return ListTile(

        title: Text(movie.title),
        );
        },
        ) ;

  }
}


