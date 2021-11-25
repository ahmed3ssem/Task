import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:task/utils/common.dart';
import 'package:task/view/home_tab_view.dart';
import 'package:task/view/second_design.dart';
import 'package:task/widget/gridview_item.dart';
import 'package:task/widget/item_widget.dart';
import 'package:task/widget/listview_item.dart';
import 'package:easy_localization/easy_localization.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {


  var shortestSide;
  bool useMobileLayout = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Device.get().isTablet ? HomeTabletView() :
      Container(
        color: const Color(0xFF245550),
        child: ListView(
          children: [
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(right: 20 , left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:   [
                  Center(
                    child: Image.asset('assets/images/logo.png' , width: 90, height: 50,),
                  ),
                 const SizedBox(width: 100,),
                 const Icon(Icons.notifications_none_outlined , size: 35,color: Colors.white,),
                ],
              ),
            ),
            const Divider(color: Color(0xFF0FA59A),thickness: 3,),
            const SizedBox(height: 10,),
            const ItemWidget(),
            const SizedBox(height: 20,),
            Expanded(child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color:  Color(0xFFE9EBEF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.only(right: 10 , left: 10),

              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: ()=>Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondDesign()),),
                        child: Container(
                            height: 60,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0xFF0FA59A),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(10),
                            child:  Center(
                              child: Text('all'.tr().toString(), style: const TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.bold),),
                            )
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        height: 70.0,
                        width: 270,
                        child: ListView.builder(scrollDirection: Axis.horizontal , shrinkWrap: true  , itemCount: 4 , itemBuilder: (ctx , pos){
                          return const ListViewItem();
                        }),
                      ),
                    ],
                  ),
                  GridView.count(
                      childAspectRatio: 2/3.1,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 1.0,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      children: List.generate(6 , (index){
                        return GridViewItem(Common.images[index]);
                      })
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
