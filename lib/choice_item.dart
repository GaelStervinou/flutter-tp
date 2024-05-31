import 'package:flutter/material.dart';

class ChoiceItem extends StatefulWidget {
  final String label;
  final VoidCallback onClick;
  final bool isSelected;

  const ChoiceItem(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onClick});

  @override
  _ChoiceItemState createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color:
              widget.isSelected ? Colors.yellow.shade200 : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
