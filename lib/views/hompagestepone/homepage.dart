import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

class HomePageStepOne extends StatefulWidget {
  const HomePageStepOne({super.key});

  @override
  State<HomePageStepOne> createState() => _HomePageStepOneState();
}

class _HomePageStepOneState extends State<HomePageStepOne> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies22
    super.didChangeDependencies();
  }

  
  String textone = "";
  String texttwo = "";
  @override
  Widget build(BuildContext context) {
    print("==================BuildContext======================33====");
    return BlocProvider(
      create:(BuildContext context) => CounterCubit() ,
      child: BlocConsumer<CounterCubit,CounterState>(
        listener: (BuildContext context,state) {},
        builder: (BuildContext context,state) {

          CounterCubit counter = CounterCubit.get(context);
          
        return Scaffold(
        appBar: AppBar(title: const Text("Counter")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    counter.remove();
                  },
                  child: const Icon(
                    Icons.remove_circle,
                    color: Colors.green,
                    size: 50.0,
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  '${counter.num}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                TextButton(
                  onPressed: () {
                    counter.add();
                  },
                  child: const Icon(
                    Icons.add_circle,
                    color: Colors.green,
                    size: 50.0,
                  ),
                ),
              ],
            ),
          ),
        )); 
        }, 
        ),
      );
  }
}
