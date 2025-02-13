import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 32),
            CustomTextField(
              hintText: 'title',
            ),
            SizedBox(height: 32),
            CustomTextField(
              maxlines: 3,
              hintText: 'content',
            ),
            SizedBox(height: 70),
            CustomButton(
              text: 'Add',
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
