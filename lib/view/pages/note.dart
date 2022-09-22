import 'package:flutter/material.dart';
import 'package:odcworkshop2/view/component/core/core_components.dart';
import 'package:odcworkshop2/view/pages/add_note.dart';
import 'package:odcworkshop2/view/pages/layout.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              navigateAndFinish(context, LayoutScreen());
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            )),
        title: const Text('Add Note',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
      ),

      body: const Center(child: Text('There\'s No Data To Show'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          navigateTo(context, const AddNote());
        },
        child:  Icon(Icons.add),backgroundColor: Colors.grey,),
    );
  }
}
