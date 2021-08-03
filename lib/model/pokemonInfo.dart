import 'package:flutter/material.dart';

class PokemonInfo extends StatefulWidget {
  var copyPokemon;
  PokemonInfo({Key? key, this.copyPokemon}) : super(key: key);

  @override
  _PokemonInfoState createState() =>
      _PokemonInfoState(copyPokemon1: copyPokemon);
}

class _PokemonInfoState extends State<PokemonInfo> {
  var copyPokemon1;
  _PokemonInfoState({this.copyPokemon1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              SliverAppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                ],
                expandedHeight: 450.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    copyPokemon1.name,
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  titlePadding: EdgeInsets.only(bottom: 340.0,left: 20.0),
                ),
              )
            ],
          ),
          Positioned(
            top: 400.0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 160.0,
            right: 90.0,
            child: Image.network(
              copyPokemon1.img,
              width: 300.0,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
