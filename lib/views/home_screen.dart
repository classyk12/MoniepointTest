// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:marketplace/utils/helper.dart';
import 'package:marketplace/utils/theme.dart';
import 'package:marketplace/utils/util.dart';
import 'package:marketplace/views/item_detail_screen.dart';
import 'package:marketplace/widgets/button.dart';
import 'package:marketplace/widgets/indicator.dart';
import 'package:marketplace/widgets/menu_item.dart';
import 'package:marketplace/widgets/search_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController? textEditingController = TextEditingController();
  ScrollController? scrollController;
  List<Item> items = <Item>[];
  final PageController? pageController =
      PageController(viewportFraction: 1, initialPage: 0);
  var page = 0;
  int totalPages = 2;

  @override
  void initState() {
    items = getItems();
    scrollController = ScrollController();
    scrollController!.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: _getBgColor(),
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(left: 00.w, top: 5.h),
              child: searchInput(
                  width: getWeight(context) * 0.29,
                  autoFocus: false,
                  controller: textEditingController,
                  context: context),
            ),
            actions: [
              Center(
                child: Stack(children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 30.sp,
                    color: black,
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 0.h, left: 15.0.w, right: 5.w),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 5.w),
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
              SizedBox(width: 10.w),
              Center(
                child: Stack(children: [
                  Icon(Icons.message_outlined, size: 30.sp, color: black),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 0.h, left: 15.0.w, right: 5.w),
                      child: Container(
                        padding: EdgeInsets.all(3.r),
                        decoration: BoxDecoration(
                            color: Colors.pink[300],
                            borderRadius: BorderRadius.circular(3.r)),
                        child: FittedBox(
                            child: Text('9+',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold))),
                      ))
                ]),
              ),
              SizedBox(
                width: 10.w,
              )
            ],
          ),
          preferredSize: Size.fromHeight(70.h)),
      backgroundColor: Colors.white,
      body:

          // CustomScrollView(
          //   controller: scrollController,
          //   slivers: <Widget>[
          //     SliverAppBar(
          //       backgroundColor: Colors.white,
          //       elevation: 0,
          //       // bottom: ,
          //       pinned: true,
          //       expandedHeight: getHeight(context) * 0.25,
          //       flexibleSpace: FlexibleSpaceBar(
          //         title: Padding(
          //           padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          //           child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   'Best Sale Product',
          //                   style: TextStyle(
          //                       color: black,
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 14.sp),
          //                 ),
          //                 Text('See more',
          //                     style: TextStyle(
          //                         color: primaryGreen,
          //                         fontWeight: FontWeight.w500,
          //                         fontSize: 12.sp))
          //               ]),
          //         ),
          //         // Text('Goa', textScaleFactor: 1),
          //         background: SizedBox(
          //           width: getWeight(context),
          //           height: getHeight(context) * 0.25,
          //           child: PageView(
          //             allowImplicitScrolling: false,
          //             controller: pageController,
          //             onPageChanged: (int currentpage) {
          //               debugPrint('xxxx => ' + currentpage.toString());
          //               if (currentpage == 3) {
          //                 return;
          //               }

          //               setState(() {
          //                 page = currentpage;
          //               });
          //             },
          //             children: <Widget>[_ad1(), _ad2()],
          //           ),
          //         ),
          //       ),
          //     ),
          //     //3
          //     SliverList(
          //       delegate: SliverChildBuilderDelegate(
          //         (_, int index) {
          //           return ListTile(
          //             leading: Container(
          //                 padding: EdgeInsets.all(8),
          //                 width: 100,
          //                 child: Placeholder()),
          //             title: Text('Place ${index + 1}', textScaleFactor: 2),
          //           );
          //         },
          //         childCount: 20,
          //       ),
          //     ),
          //   ],
          // ),

          ListView(
        controller: scrollController,
        children: [
          SizedBox(
            width: getWeight(context),
            height: getHeight(context) * 0.25,
            child: PageView(
              allowImplicitScrolling: false,
              controller: pageController,
              onPageChanged: (int currentpage) {
                debugPrint('xxxx => ' + currentpage.toString());
                if (currentpage == 3) {
                  return;
                }

                setState(() {
                  page = currentpage;
                });
              },
              children: <Widget>[_ad1(), _ad2()],
            ),
          ),
          SizedBox(height: 15.h),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MenuItem(icon: Icons.category_outlined, title: 'Category'),
                MenuItem(icon: Icons.flight_outlined, title: 'Flight'),
                MenuItem(icon: Icons.payment_outlined, title: 'Bill'),
                MenuItem(icon: Icons.adjust_outlined, title: 'Data Plan'),
                MenuItem(icon: Icons.currency_pound_sharp, title: 'Top up'),
              ]),
          SizedBox(height: 20.h),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            indicator(true),
            indicator(false),
            indicator(false),
          ]),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Sale Product',
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  ),
                  Text('See more',
                      style: TextStyle(
                          color: primaryGreen,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp))
                ]),
          ),
          const SizedBox(height: 20),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20.0),
              itemBuilder: (BuildContext ctx, int index) {
                var item = items[index];

                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailScreen(item: item))),
                  child: Container(
                    height: 120.h,
                    color: white,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, right: 5),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    item.isLiked!
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color: item.isLiked!
                                        ? Colors.pink[300]
                                        : Colors.black,
                                  ),
                                ),
                              ),
                              height: 110.h,
                              width: getWeight(context),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/${item.image!}'),
                                      fit: BoxFit.cover))),
                          SizedBox(height: 11.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                            child: SizedBox(
                              child: Text(item.title ?? '',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                            child: Text(item.body ?? '',
                                maxLines: 2,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 12.sp,
                                    color: black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                            child: Row(children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow[900],
                                size: 15,
                              ),
                              Text('${item.rating} | ${item.totalReviews}',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500)),
                              const Expanded(child: SizedBox()),
                              Text('\$${item.amount}',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: primaryGreen,
                                      fontWeight: FontWeight.w700))
                            ]),
                          )
                        ]),
                  ),
                );
              }),
        ],
      ),
    );
  }

  _ad1() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/fashion1.jpeg',
            )),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text('#FASHION DAY',
                  style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w700)),
              const Expanded(child: SizedBox()),
              indicator(true),
              indicator(false),
              indicator(false),
            ]),
            SizedBox(height: 5.h),
            Text('80% OFF',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700)),
            Text('Deliver fashion that suits to',
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700])),
            SizedBox(height: 3.h),
            Text('your style',
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700])),
            SizedBox(height: 20.h),
            Button(
              radius: 8.r,
              text: 'Check this out',
              onPressed: () => null,
              height: 50,
              width: 130,
              fontSize: 12.sp,
              color: Colors.blueGrey[900],
              textColor: white,
            ),
          ],
        ),
      ),
    );
  }

  _ad2() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/fashion5.jpeg',
            )),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text('#BEAUTYSALE',
                  style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w700)),
              const Expanded(child: SizedBox()),
              indicator(false),
              indicator(true),
              indicator(false),
            ]),
            SizedBox(height: 5.h),
            Text('DISCOVER OUR',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700)),
            Text('BEAUTY SELECTION',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(height: 20.h),
            Button(
              radius: 8.r,
              text: 'Check this out',
              onPressed: () => null,
              height: 50,
              width: 130,
              fontSize: 12.sp,
              color: Colors.blueGrey[900],
              textColor: white,
            ),
          ],
        ),
      ),
    );
  }

  _getBgColor() {
    debugPrint(page.toString());

    if (page == 1) {
      return const Color(0xffdab6c8);
    } else if (page == 0) {
      return const Color(0xffeae9ee);
    } else {
      return Colors.white;
    }
  }

  _scrollListener() {
    if (scrollController!.position.axisDirection == AxisDirection.up ||
        scrollController!.position.axisDirection == AxisDirection.down) {
      setState(() {
        page = 3;
      });
    }
  }
}
