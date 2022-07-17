import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateChips extends StatelessWidget {
  const StateChips({Key? key, required this.state}) : super(key: key);

  final String state;

  Widget _build(String state) {
    String stateFr;
    Color color;

    switch (state) {
      case 'FactoryNew':
        {
          stateFr = 'Neuf';
          color = Color.fromARGB(255, 64, 255, 0);
        }

        break;
      case 'MinimalWear':
        {
          stateFr = 'Très légèrement abimé';
          color = Color.fromARGB(255, 180, 207, 24);
        }
        break;

      case 'FieldTested':
        {
          stateFr = 'Peu abimé';
          color = Color.fromARGB(255, 216, 145, 12);
        }
        break;

      case 'WellWorn':
        {
          stateFr = 'Abimé';
          color = Color.fromARGB(255, 209, 86, 4);
        }
        break;

      case 'BattleScarred':
        {
          stateFr = 'Très abimé';
          color = Color.fromARGB(255, 236, 5, 5);
        }
        break;

      default:
        {
          stateFr = 'inconnu';
          color = Color.fromARGB(255, 0, 0, 0);
        }
    }

    return Chip(
      elevation: 3,
        label: Text(stateFr,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        backgroundColor: color);
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: new Matrix4.identity()..scale(0.8), child: _build(state));
  }
}
