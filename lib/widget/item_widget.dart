import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10,),
        Image.asset('assets/images/person.png'),
        const SizedBox(width: 10,),
        Image.asset('assets/images/search.png'),
        Container(
          margin: const EdgeInsets.only(left: 15),
          height: 55,
          width: 250,
          child:  TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            decoration:  InputDecoration(
              prefixIcon: const Icon(Icons.search),
              label: Text('studentName'.tr().toString()),
              enabledBorder:  const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
