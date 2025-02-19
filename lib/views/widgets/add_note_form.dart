import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

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
          ColorsListView(),
          const SizedBox(height: 70),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  onTapButton(context);
                },
                text: 'Add',
              );
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }

  void onTapButton(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      if (title != null && subTitle != null) {
        var noteModel = NoteModel(
          title: title!,
          subTitle: subTitle!,
          date: DateFormat('dd/MM/yyyy').format(DateTime.now()),
          color: Colors.tealAccent.value,
          // color: Colors.blueAccent.value,
        );

        BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
      } else {
        print("Title or Subtitle is null!");
      }
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
