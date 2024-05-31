import 'package:flutter/material.dart';
import 'package:tp_flutter/choice_item.dart';

class Header extends StatelessWidget {
  final List<String> selectedLabels;

  const Header({super.key, required this.selectedLabels});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 3) * 2,
      width: double.infinity,
      color: Colors.deepPurpleAccent,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Vos choix:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          selectedLabels.isEmpty
              ? const Text(
                  'Cliquez sur les choix en dessous !',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: selectedLabels
                      .map((label) => ChoiceItem(
                            label: label,
                            isSelected: false,
                            onClick: () {},
                          ))
                      .toList(),
                ),
        ],
      ),
    );
  }
}
