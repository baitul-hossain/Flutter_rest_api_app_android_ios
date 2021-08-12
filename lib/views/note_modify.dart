import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String noteID;
  final String noteTitle;
  final String noteContent;

  NoteModify({this.noteID, this.noteTitle, this.noteContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(noteID == null ? 'Create note': 'Edit note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: noteID == null ? 'Note Title': noteTitle,
              ),
            ),
            Container(
              height: 8.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: noteID == null ? 'Note Content': noteContent,
              ),
            ),
            Container(
              height: 16.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 35.0,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
