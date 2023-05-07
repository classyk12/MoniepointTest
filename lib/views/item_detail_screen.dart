import 'package:flutter/material.dart';
import 'package:marketplace/utils/delayed_animation.dart';
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
  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        height: getHeight(context) * 0.12,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Price',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 5.h),
                Text('\$${widget.item!.amount}',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: primaryGreen,
                        fontWeight: FontWeight.w700))
              ],
            ),
            const Expanded(child: SizedBox()),
            Container(
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    bottomLeft: Radius.circular(5.r)),
                color: primaryGreen,
              ),
              child: Row(
                children: [
                  const Icon(Icons.shopping_bag_outlined, color: white),
                  SizedBox(width: 10.w),
                  const Text('1',
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.r),
                    bottomRight: Radius.circular(5.r)),
              ),
              child: const Text('Buy Now',
                  style: TextStyle(color: white, fontWeight: FontWeight.bold)),
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
          Icon(
            widget.item!.isLiked!
                ? Icons.favorite
                : Icons.favorite_border_outlined,
            color: widget.item!.isLiked! ? Colors.pink[300] : Colors.black,
          ),
          const SizedBox(width: 15),
          const Icon(Icons.share_outlined, color: black),
          const SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Stack(children: [
              Icon(
                Icons.shopping_bag_outlined,
                size: 30.sp,
                color: black,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 0.h, left: 15.0.w, right: 5.w),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                    decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: BorderRadius.circular(3.r)),
                    child: Text(' 1 ',
                        style: TextStyle(
                            color: white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold)),
                  ))
            ]),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: ListView(children: [
        DelayedAnimation(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 20.w),
            child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuItem(icon: Icons.woman, color: Colors.blueGrey[100]),
                    MenuItem(icon: Icons.man, color: Colors.blueGrey[100]),
                    MenuItem(
                        icon: Icons.collections, color: Colors.blueGrey[100]),
                    MenuItem(
                        icon: Icons.adjust_outlined,
                        color: Colors.blueGrey[100]),
                  ],
                ),
                // padding: const EdgeInsets.all(30),
                height: getHeight(context) * 0.45,
                width: getWeight(context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.grey.withOpacity(0.2),
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/${widget.item!.image!}'),
                        fit: BoxFit.contain))),
          ),
        ),
        SizedBox(height: 20.h),
        DelayedAnimation(
          delay: 850,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(children: [
              const Icon(
                Icons.store,
                color: Colors.grey,
                size: 30,
              ),
              Text('  tokobaju.id',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500)),
            ]),
          ),
        ),
        DelayedAnimation(
          delay: 900,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 20.w),
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(widget.item!.body!,
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 16.sp,
                      color: black,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        DelayedAnimation(
          delay: 850,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Icon(
                Icons.star,
                color: Colors.yellow[900],
                size: 20,
              ),
              Text(' ${widget.item!.rating!} Ratings ',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500)),
              const Icon(
                IconData(
                  0xe801,
                  fontFamily: _kFontFam,
                  fontPackage: _kFontPkg,
                ),
                color: Colors.grey,
              ),
              Text('2.3+ Reviews ',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500)),
              const Icon(
                IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg),
                color: Colors.grey,
              ),
              Text('2.9 + Sold ',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500)),
            ]),
          ),
        ),
        SizedBox(height: 15.h),
        DelayedAnimation(
          delay: 850,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        child: TabBar(
                          labelColor: primaryGreen,
                          unselectedLabelColor: Colors.grey,
                          labelPadding: const EdgeInsets.only(left: 0),
                          indicatorWeight: 3,
                          indicatorColor: primaryGreen,
                          labelStyle:
                              const TextStyle(fontWeight: FontWeight.w500),
                          tabs: const [
                            Tab(text: 'About Item'),
                            Tab(text: 'Reviews'),
                          ],
                        ),
                      ),
                      Container(
                        height: getHeight(context) * 0.1, //height of TabBarView
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: TabBarView(children: <Widget>[
                          _aboutItem(),
                          const Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ]),
                      )
                    ])),
          ),
        ),
        SizedBox(height: 100.h)
      ]),
    );
  }

  _aboutItem() {
    return Padding(
      padding: EdgeInsets.only(top: 8.0.h, bottom: 8.h, left: 5.w, right: 18.w),
      child: Column(children: [
        SizedBox(height: 15.h),
        Row(
          children: [
            Text('Brand: ',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500)),
            Text('  ChArmkpR ',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: black,
                    fontWeight: FontWeight.bold)),
            const Expanded(child: SizedBox()),
            Text('Color: ',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500)),
            Text(
              'Aprikot ',
              style: TextStyle(
                  fontSize: 14.sp, color: black, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10.w)
          ],
        ),
      ]),
    );
  }
}
