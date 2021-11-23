import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ListViewItem extends StatefulWidget {
  const ListViewItem({Key? key}) : super(key: key);

  @override
  _ListViewItemState createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.only(right: 20 , left: 20),
      margin: const EdgeInsets.all(5),
      //padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset('assets/images/sandwitch.png'),
          const SizedBox(width: 10,),
          Text('drinks'.tr().toString()),
        ],
      ),
    );
  }
}
