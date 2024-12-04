import 'package:basketball_counter_app/cubits/counter_cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubits/counter_cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text(
              'Points Counter',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team 1",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 70),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamPointsIncrement('A', 1);
                        },
                        child: const Text(
                          " Add 1 Point ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 70),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamPointsIncrement('A', 2);
                        },
                        child: const Text(
                          " Add 2 Points ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 70),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamPointsIncrement('A', 3);
                        },
                        child: const Text(
                          " Add 3 Points ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team 2",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 70),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamPointsIncrement('B', 1);
                        },
                        child: const Text(
                          " Add 1 Point ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 70),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamPointsIncrement('B', 2);
                        },
                        child: const Text(
                          " Add 2 Points ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 70),
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamPointsIncrement('B', 3);
                        },
                        child: const Text(
                          " Add 3 Points ",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 70),
                    backgroundColor: Colors.amber),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).teamPointsReset();
                },
                child: const Text(
                  " Reset ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
