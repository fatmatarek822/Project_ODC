import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),),
        title: Text('Support', style: TextStyle(fontSize: 25, color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  label: Text(
                    'Name',
                  ),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  enabledBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  label: Text(
                    'E-Mail',
                  ),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  prefixIcon: Icon(Icons.mail,color: Colors.orange,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                cursorColor: Colors.orange,
                maxLines: 4,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  label: Text(
                    'What\'s making you unhappy ? ',

                  ),
                  labelStyle: TextStyle(color: Colors.grey[600]),
                  enabledBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.orange, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // b
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),// ackground// foreground
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}