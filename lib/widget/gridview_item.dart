import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class GridViewItem extends StatefulWidget {
  String image;


  GridViewItem(this.image, {Key? key}) : super(key: key);

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
          Container(
            margin: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/icon.png'),
                Card(
                  elevation: 2,
                  color: const Color(0xFFE8F8F7),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('kal'.tr().toString(), style: const TextStyle(color: Color(0xFF38B3AA)),),
                        const SizedBox(width: 5,),
                        Text('kalNum'.tr().toString(), style: const TextStyle(color: Color(0xFF38B3AA))),
                        const SizedBox(width: 5,),
                        const Image(image: AssetImage('assets/images/Path.png')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5,),
          Center(
            child: Image.asset(widget.image),
          ),
          const SizedBox(height: 10,),
          Center(
            child: Text('productName'.tr().toString() , style: const TextStyle(fontSize: 16),),
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [

              Text('quantity'.tr().toString() , style: const TextStyle(fontSize: 15)),
              const SizedBox(width: 10,),
              const Text('5' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17 , color: Color(0xFF0FA59A)),),
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5 , left: 5),
                decoration: const BoxDecoration(
                    color: Color(0xFF0FA59A),
                    shape: BoxShape.circle
                ),
                child: const Icon(Icons.add , color: Colors.white,),
              ),
              const SizedBox(width: 30,),
              Text('price'.tr().toString(),style: const TextStyle( fontSize: 20, fontWeight: FontWeight.bold , color: Color(0xFF0FA59A))),
              const SizedBox(width: 5,),
              Text('currency'.tr().toString(), style: const TextStyle(color: Color(0xFF0FA59A) , fontWeight: FontWeight.bold , fontSize: 15)),
            ],
          )
        ],
      ),
    );
  }
}
