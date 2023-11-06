import 'package:flutter/material.dart';
import 'package:notesapp/Views/edit_note.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return EditNote();
        },
      )),
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: const Text(
              "Flutter Notes",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Poppins", fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text("Hello Iam Mohamad Can I help u!",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4), fontSize: 18)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 30,
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "${DateTime.now().toString().substring(0, 10)}",
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
