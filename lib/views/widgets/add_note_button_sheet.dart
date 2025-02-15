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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
final GlobalKey<FormState> formKey = GlobalKey();

AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'title',
          ),
          const SizedBox(height: 32),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            maxlines: 3,
            hintText: 'content',
          ),
          const SizedBox(height: 70),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
            text: 'Add',
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
