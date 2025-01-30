import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String taskName;
  final bool? value;
  final Function(bool?)? onChanged;

  const TodoItem({
    super.key,
    required this.taskName,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: value == true
            ? Colors.black.withValues(alpha: 0.2)
            : Colors.white.withValues(alpha: 0.5),
      ),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            checkColor: Colors.amberAccent,
          ),
          const SizedBox(width: 10),
          Text(taskName),
        ],
      ),
    );
  }
}
