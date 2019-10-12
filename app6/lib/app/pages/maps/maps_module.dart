import 'package:app10/app/pages/maps/maps_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:app10/app/pages/maps/maps_page.dart';

class MapsModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => MapsBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => MapsPage();

  static Inject get to => Inject<MapsModule>.of();
}
