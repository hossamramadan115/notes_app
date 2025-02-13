import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 35),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.done,
          ),
          SizedBox(height: 25),
          CustomTextField(
            hintText: 'title',
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
