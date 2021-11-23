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
        Container(
          margin: const EdgeInsets.only(left: 10 , right: 10),
          height: 55,
          width: 240,
          decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child:  TextField(
            textAlign: TextAlign.center,
            decoration:  InputDecoration(
              suffixIcon: Image.asset('assets/images/search .png',),
              label: Text('studentName'.tr().toString(),),
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
        const SizedBox(width: 10,),
        Image.asset('assets/images/search.png'),
        const SizedBox(width: 10,),
        Image.asset('assets/images/person.png'),

      ],
    );
  }
}
