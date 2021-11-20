import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class GridViewItem extends StatefulWidget {
  const GridViewItem({Key? key}) : super(key: key);

  @override
  _GridViewItemState createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 5,
                color: Colors.green,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child:  Text('kal'.tr().toString()),
                ),
              ),
              const Icon(Icons.info , color: Colors.green,),
            ],
          ),
          Center(
            child: Image.asset('assets/images/item.png', width: 70,height: 70,),
          ),
           Center(
            child: Text('productName'.tr().toString()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text('5' , style: TextStyle(color: Colors.green),),
              const SizedBox(width: 10,),
              Text('quantity'.tr().toString()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('currency'.tr().toString(), style: const TextStyle(color: Colors.green , fontWeight: FontWeight.bold , fontSize: 15)),
              const SizedBox(width: 5,),
              Text('price'.tr().toString(),style: const TextStyle(color: Colors.green)),
              const SizedBox(width: 30,),
              Container(
                margin: const EdgeInsets.only(right: 5 , left: 5),
                decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                ),
                child: const Icon(Icons.add , color: Colors.white,),
              ),

            ],
          )
        ],
      ),
    );
  }
}
