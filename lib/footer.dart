import 'package:flutter/material.dart';

import 'choice_item.dart';

class Footer extends StatelessWidget {
  final List<String> labels;
  final List<String> selectedLabels;
  final Function(String) onLabelTapped;

  const Footer({
    super.key,
    required this.labels,
    required this.selectedLabels,
    required this.onLabelTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 8,
        runSpacing: 4,
        children: labels
            .map((label) => ChoiceItem(
                label: label,
                isSelected: selectedLabels.contains(label),
                onClick: () => onLabelTapped(label)))
            .toList(),
      ),
    );
  }
}
