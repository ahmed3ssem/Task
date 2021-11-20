import 'package:flutter/material.dart';
import 'package:task/widget/item_widget.dart';

class SecondDesign extends StatefulWidget {
  const SecondDesign({Key? key}) : super(key: key);

  @override
  _SecondDesignState createState() => _SecondDesignState();
}

class _SecondDesignState extends State<SecondDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width/2,
        alignment: Alignment.topLeft,
        decoration: const BoxDecoration(color: Color(0xFF13A69A)
        ),
        child: Column(
          children: [
            const ItemWidget(),
            Center(
              child: Text('يجب عليك اختيار طالب اولا' , style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
