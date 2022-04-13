import 'package:final_class_work/bloc/container_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => ContainerBloc(),
        child: const MyHomepage(),
      ),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<ContainerBloc, ContainerState>(
              bloc: BlocProvider.of<ContainerBloc>(context),
              builder: (context, state) {
                if (state is ButtonState) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: state.width,
                    height: state.height,
                    decoration: BoxDecoration(
                      color: state.color,
                    ),
                  );
                } else {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<ContainerBloc>(context).add(
                  ButtonEvent(color: Colors.green, width: 100, height: 100));
            },
            backgroundColor: Colors.green,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<ContainerBloc>(context).add(
                  ButtonEvent(color: Colors.blue, width: 150, height: 150));
            },
            backgroundColor: Colors.blue,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<ContainerBloc>(context).add(
                  ButtonEvent(color: Colors.purple, width: 200, height: 200));
            },
            backgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
