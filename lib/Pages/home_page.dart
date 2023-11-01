import 'package:bloc_demo/Cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Bloc Demo'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // bloc builder which build the state for the code.
              // after building an state it shows the data and rebuild only specific part of the code.
              // BlocListener<CounterCubit, CounterState>(
              //   listener: (context, state) {
              //     if (state.isAdded == true) {
              //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //           backgroundColor: Color(0xff000000),
              //           content: Text(
              //             'Incremented',
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontWeight: FontWeight.bold,
              //                 fontStyle: FontStyle.italic),
              //           )));
              //     } else if (state.isAdded == false) {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //          const  SnackBar(
              //             backgroundColor: Color(0xff000000),
              //           content: Text(
              //         'Decremented',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontStyle: FontStyle.italic,
              //             fontWeight: FontWeight.bold),
              //       )));
              //     }
              //   },
              // ),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (BuildContext context, state) {
                  return Text(
                    state.initialValue.toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    child: const Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ]));
  }
}
