import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 8, top: 8),
        decoration: BoxDecoration(
            color: Color(0xffFFCD79), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: const Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
              ),
              subtitle: const Text(
                'build your career with Hossam',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff836743),
                ),
              ),
              trailing: Transform.translate(
                offset: Offset(12, -30),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 16),
              child: const Text(
                'May11, 2025',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff836743),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
