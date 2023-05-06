import 'package:flutter/material.dart';
import 'package:marketplace/utils/helper.dart';
import 'package:marketplace/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/utils/util.dart';
import 'package:marketplace/widgets/menu_item.dart';

class ItemDetailScreen extends StatefulWidget {
  final Item? item;
  const ItemDetailScreen({Key? key, this.item}) : super(key: key);

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      floatingActionButton: Container(
        height: getHeight(context) * 0.1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Total Price'),
                Text('\$${widget.item!.amount}')
              ],
            ),
            const Expanded(child: SizedBox()),
            Container(
              decoration: BoxDecoration(color: primaryGreen),
              child: Row(
                children: const [
                  Icon(Icons.shopping_bag_outlined, color: white),
                  Text('1', style: TextStyle(color: white)),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.blueGrey[900]),
              child: const Text('Buy Now', style: TextStyle(color: white)),
            )
          ],
        ),
        color: Colors.white,
        width: getWeight(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left,
            color: black,
            size: 30.h,
          ),
        ),
        actions: [
          const Icon(Icons.favorite_outline, color: black),
          const SizedBox(width: 15),
          const Icon(Icons.share_outlined, color: black),
          const SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Stack(children: [
              const Icon(Icons.shopping_bag_outlined, size: 30, color: black),
              Padding(
                  padding: EdgeInsets.only(top: 0.h, left: 10.0.w),
                  child: Container(
                    padding: EdgeInsets.all(3.r),
                    decoration: const BoxDecoration(
                        color: Colors.pink, shape: BoxShape.rectangle),
                    child: FittedBox(
                        child: Text('1',
                            style: TextStyle(
                                color: white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold))),
                  )),
            ]),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 20.w),
        child: ListView(children: [
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuItem(
                      icon: Icons.category_outlined,
                      color: Colors.blueGrey[400]),
                  MenuItem(
                      icon: Icons.flight_outlined, color: Colors.blueGrey[400]),
                  MenuItem(
                      icon: Icons.payment_outlined,
                      color: Colors.blueGrey[400]),
                  MenuItem(
                      icon: Icons.adjust_outlined, color: Colors.blueGrey[400]),
                ],
              ),
              // padding: const EdgeInsets.all(30),
              height: getHeight(context) * 0.45,
              width: getWeight(context),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.grey.withOpacity(0.1),
                  image: DecorationImage(
                      image: AssetImage('assets/images/${widget.item!.image!}'),
                      fit: BoxFit.contain))),
          SizedBox(height: 20.h),
          Row(children: const [
            Icon(Icons.shop_sharp),
            Text('tokobaju.id'),
          ]),
          SizedBox(height: 20.h),
          Text(widget.item!.body!),
          Row(children: [
            Icon(Icons.star, color: Colors.yellow[900]),
            Text('${widget.item!.rating!} Ratings '),
            const Text('.'),
            const Text('2.3+ Reviews '),
            const Text('.'),
            const Text('2.9 + Sold '),
          ]),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text('About item'),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
              Column(
                children: const [
                  Text('Reviews'),
                ],
              ),
            ],
          ),
          Row(
            children: const [
              Divider(),
            ],
          ),
          Row(
            children: const [
              Text('Brand: '),
              Text('ChArmkpR '),
              Expanded(child: SizedBox()),
              Text('Color: '),
              Text('Aprikot ')
            ],
          ),
        ]),
      ),
    );
  }
}
