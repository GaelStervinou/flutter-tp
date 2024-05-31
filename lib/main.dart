import 'package:flutter/material.dart';
import 'package:tp_flutter/footer.dart';

import 'header.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List<String> labels = [
    'boulangerie',
    'bombe nucléaire',
    'aérophagie',
    'laping',
    'challenge',
    'ce tp',
    'je le fais',
    'pas en cours',
    'promis'
  ];
  final List<String> selectedLabels = [
    'ce tp',
    'je le fais',
    'pas en cours',
    'promis'
  ];

  get onLabelTapped => (String label) {
        setState(() {
          if (selectedLabels.contains(label)) {
            selectedLabels.remove(label);
          } else {
            selectedLabels.add(label);
          }
        });
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super TP',
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Header(selectedLabels: selectedLabels),
              Footer(
                  labels: labels,
                  onLabelTapped: onLabelTapped,
                  selectedLabels: selectedLabels)
            ],
          ),
        ),
      ),
    );
  }
}
