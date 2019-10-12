import 'package:app10/src/app_repository.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:app10/src/app_widget.dart';
import 'package:app10/src/app_bloc.dart';
import 'package:hasura_connect/hasura_connect.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => AppRepository(i.get<HasuraConnect>())),
        Dependency((i) => HasuraConnect("https://rbapp6.herokuapp.com/v1/graphql")),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
