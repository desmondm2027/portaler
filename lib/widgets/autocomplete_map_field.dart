import 'package:flutter/material.dart';

class AutocompleteMapField extends StatelessWidget {
  final List<String> suggestions;
  final TextEditingController controller;
  final String hintText;

  AutocompleteMapField({
    required this.suggestions,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return const Iterable<String>.empty();
        }
        return suggestions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        controller.text = selection;
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        );
      },
    );
  }
}
