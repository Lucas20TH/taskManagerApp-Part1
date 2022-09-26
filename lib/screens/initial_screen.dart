import 'package:flutter/material.dart';
import 'package:stockando/components/theme.dart';
import '../components/exercises.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool theme = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: theme == true
            ? AppBar(
                title: const Text("Exercícios"),
                titleSpacing: 55,
                shadowColor: Colors.white,
                backgroundColor: Colors.blue, // Sombra na AppBar
              )
            : AppBar(
                title: const Text("Exercícios"),
                titleSpacing: 55,
                shadowColor: Colors.white, // Sombra na AppBar
              ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white60,
            onPressed: () {
              setState(() {
                theme = !theme;
              });
            },
            child: theme == true
                ? const Icon(
                    Icons.dark_mode_sharp,
                  )
                : const Icon(
                    Icons.light_mode_sharp,
                  )),
        body: theme == true
            ? ListView(
                children: [
                  const Exercises(
                    "Ombros",
                    'assets/images/Shoulders.png',
                    5,
                  ),
                  const Exercises(
                    "Esteira",
                    'assets/images/Treadmill.png',
                    1,
                  ),
                  const Exercises(
                    "Bicicleta",
                    'assets/images/Bike.png',
                    1,
                  ),
                  const Exercises(
                    "Costas",
                    'assets/images/Back.png',
                    3,
                  ),
                  const Exercises(
                    "Peito",
                    'assets/images/Chest.png',
                    4,
                  ),
                  const Exercises(
                    "Abdômen",
                    'assets/images/Abs.png',
                    4,
                  ),
                  const Exercises(
                    "Elíptico",
                    'assets/images/Eliptical.png',
                    3,
                  ),
                  const Exercises(
                    "Quadríceps",
                    'assets/images/Quadriceps.png',
                    4,
                  ),
                  Container(
                    height: 80,
                    color: Colors.white,
                  ),
                ],
              )
            : ListView(
                children: [
                  const ExercisesDark(
                    "Ombros",
                    'assets/images/Shoulders.png',
                    5,
                  ),
                  const ExercisesDark(
                    "Esteira",
                    'assets/images/Treadmill.png',
                    1,
                  ),
                  const ExercisesDark(
                    "Bicicleta",
                    'assets/images/Bike.png',
                    1,
                  ),
                  const ExercisesDark(
                    "Costas",
                    'assets/images/Back.png',
                    3,
                  ),
                  const ExercisesDark(
                    "Peito",
                    'assets/images/Chest.png',
                    4,
                  ),
                  const ExercisesDark(
                    "Abdômen",
                    'assets/images/Abs.png',
                    4,
                  ),
                  const ExercisesDark(
                    "Elíptico",
                    'assets/images/Eliptical.png',
                    3,
                  ),
                  const ExercisesDark(
                    "Quadríceps",
                    'assets/images/Quadriceps.png',
                    4,
                  ),
                  Container(
                    height: 80,
                    color: Colors.black,
                  )
                ],
              ));
  }
}
