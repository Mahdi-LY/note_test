import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad/views/homepagesteptwo/widgets/list_product.dart';

import 'cubit/prudact_cubit.dart';

class HomePageStepTwo extends StatelessWidget {
  const HomePageStepTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PrudactCubit(),
      child: Scaffold(
          appBar: AppBar(
            title: Text("STEP TWO "),
            actions: [],
          ),
          body: ProductList()),
    );
  }
}

Widget textViewtwo(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

class TextView extends StatelessWidget {
  const TextView({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
