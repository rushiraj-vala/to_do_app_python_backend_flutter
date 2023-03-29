import 'package:flutter/material.dart';

class IntrayToDo extends StatelessWidget {
  final String textTitle;
  // final int index;

  IntrayToDo({super.key, required this.textTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [BoxShadow(color: Colors.black, offset: Offset(2, 2))],
        ),
        child: Row(
          children: <Widget>[
            Radio(
              value: null,
              groupValue: null,
              onChanged: null,
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Column(
                children: [
                  Text(
                    textTitle,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Spacer(),
            // ReorderableDragStartListener(
            //   child: Icon(Icons.drag_handle_rounded),
            //   key: key,
            //   index: index,
            // ),
          ],
        ),
      ),
    );
  }
}
