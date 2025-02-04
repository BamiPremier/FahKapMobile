// ignore: must_be_immutable import 'package:EMIY/model/data/CategoryModel.dart';
import 'package:EMIY/components/Widget/ShimmerBox.dart';
import 'package:EMIY/model/data/CategoryModel.dart';
import 'package:EMIY/styles/textStyle.dart';
import 'package:EMIY/styles/theme.dart';
import 'package:EMIY/utils/Services/routing.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:EMIY/styles/colorApp.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryComponent extends StatelessWidget {
  CategoryModel category;

  CategoryComponent({required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.toNamed(AppLinks.BOUTIQUE_FOR_CATEGORY +
              '?id=${category.id}&libelle=${category.libelle}&description=${category.description}&nombreBoutique=${category.nombreBoutique}');
        },
        child: Container(
          // height: kSmHeight,
          // width: kSmWidth,
          alignment: Alignment.center,
          padding: EdgeInsets.all(kMarginX),
          margin: EdgeInsets.only(right: kMarginX),
          decoration: BoxDecoration(
              color: ColorsApp.bg0,
              border: Border.all(color: ColorsApp.bg),
              borderRadius: BorderRadius.circular(13)),
          child: Row(
            children: [
              Container(
                // padding: EdgeInsets.all(kMarginX * 1.5),
                child: Text(category.libelle,
                    overflow: TextOverflow.ellipsis,
                    style: TexteStyle().secondaryTextStyle),
              ),
              // Container(
              //   child: CachedNetworkImage(
              //     fit: BoxFit.cover,
              //     imageUrl:
              //         category.logo /* 'https://placehold.co/600x400@2x.png' */,
              //     imageBuilder: (context, imageProvider) {
              //       return Container(
              //           // height: kHeight / 3,
              //           width: 100,
              //           // margin: EdgeInsets.only(bottom: 10),
              //           // padding: EdgeInsets.symmetric(vertical: 4, horizontal: 1),
              //           decoration: BoxDecoration(
              //             color: ColorsApp.greySecond,
              //             borderRadius: BorderRadius.only(
              //                 topRight: Radius.circular(8),
              //                 bottomRight: Radius.circular(8)),
              //             image: DecorationImage(
              //                 image: imageProvider,
              //                 fit: BoxFit.cover,
              //                 colorFilter: ColorFilter.mode(
              //                     Colors.transparent, BlendMode.colorBurn)),
              //           ));
              //     },
              //     placeholder: (context, url) {
              //       return ShimmerBox();
              //     },
              //     errorWidget: (context, url, error) {
              //       return Container(
              //           width: 100,
              //           // margin: EdgeInsets.only(bottom: 10),
              //           // padding: EdgeInsets.symmetric(vertical: 4, horizontal: 1),
              //           decoration: BoxDecoration(
              //               color: ColorsApp.greySecond,
              //               borderRadius: BorderRadius.only(
              //                   topRight: Radius.circular(8),
              //                   bottomRight: Radius.circular(8)),
              //               image: DecorationImage(
              //                 image: AssetImage('assets/logo/logoNew.png'),
              //               )));
              //     },
              //   ),
              // ),
            ],
          ),
        ));
  }
}

class CacdNetworkImage {}
