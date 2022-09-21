import 'package:flutter/material.dart';


class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'FAQ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: ExpansionTile(title: const Text(
                'Q1: How many countries Orange Digital Center is in ?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
                iconColor: Colors.black,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(20),bottomEnd: Radius.circular(20))
                    ),
                    child: const ListTile(title:
                    Text(
                      '16 Country',
                      style: TextStyle(
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
