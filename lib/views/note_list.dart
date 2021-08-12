import 'package:flutter/material.dart';
import 'package:flutter_rest_api/models/note_for_listing.dart';
import 'package:flutter_rest_api/views/note_modify.dart';

class NoteList extends StatelessWidget {

  final notes = [
    NoteForListing(
      noteID: '1',
      noteTitle: 'Note 1',
      noteContent: 'Note Content 1',
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now()
    ),
    NoteForListing(
        noteID: '2',
        noteTitle: 'Note 2',
        noteContent: 'Note Content 2',
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now()
    ),
    NoteForListing(
        noteID: '3',
        noteTitle: 'Note 3',
        noteContent: 'Note Content 3',
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now()
    ),
    NoteForListing(
        noteID: '4',
        noteTitle: 'Note 4',
        noteContent: 'Note Content 4',
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now()
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List of notes'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NoteModify();
            }));
          },
          child: Icon(Icons.add),
        ),
        body: ListView.separated(
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(
                  notes[index].noteTitle,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                subtitle: Text('Last edited on ${notes[index].lastEditDateTime}'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return NoteModify(
                      noteID: notes[index].noteID,
                      noteTitle: notes[index].noteTitle,
                      noteContent: notes[index].noteContent,
                    );
                  }));
                },
              );
            },
            separatorBuilder: (_, __) => Divider(
                  height: 1.0,
                  color: Colors.green,
                ),
            itemCount: notes.length));
  }
}
