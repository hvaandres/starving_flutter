import 'package:flutter/material.dart';

class CustomEditText extends StatelessWidget {
  final TextEditingController textController;
  
  const CustomEditText({
    super.key,
    required this.textController
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      //! set design to EditText
      child: TextField(
        controller: textController,
      ),
    );
  }
}
