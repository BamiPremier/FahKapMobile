// ignore: must_be_immutable
import 'package:EMIY/Views/Produit/ProduitView.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMIY/model/data/ProduitModel.dart';
import 'package:EMIY/styles/textStyle.dart';
import 'package:EMIY/utils/Services/routing.dart';
import 'package:EMIY/utils/Services/apiUrl.dart';
import 'package:get/get.dart';
import 'package:EMIY/styles/colorApp.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProduitComponent extends StatelessWidget {
  ProduitModel produit;
  var height, index;

  ProduitComponent({required this.produit, required this.index, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: kMdHeight * 2,
          width: kMdWidth * 1.1,
          // padding: EdgeInsets.all(kMarginX),
          margin: EdgeInsets.only(right: kMarginX),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 0, // Soften the shaodw
                  spreadRadius: 0,
                  offset: Offset(-2.0, 3),
                )
              ]),
          child: /* SingleChildScrollView(
              child: */
              Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: ColorsApp.greySecond,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: CachedNetworkImage(
                          height: kMdHeight * .15,
                          width: Get.width * .5,
                          fit: BoxFit.cover,
                          imageUrl: produit.images[0].src,
                          imageBuilder: (context, imageProvider) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.transparent,
                                        BlendMode.colorBurn)),
                              ),
                            );
                          },
                          placeholder: (context, url) {
                            return Container(
                              child: Center(
                                  child: CircularProgressIndicator(
                                color: ColorsApp.skyBlue,
                              )),
                            );
                          },
                          errorWidget: (context, url, error) {
                            return CircleAvatar(
                                backgroundColor: ColorsApp.skyBlue,
                                radius: 50,
                                backgroundImage:
                                    AssetImage("assets/logo/logoNew.png"));
                          },
                        )),
                    // Positioned(
                    //   top: 0,
                    //   left: Get.height * .158,
                    //   child: Container(
                    //     padding: EdgeInsets.all(6),
                    //     decoration: BoxDecoration(
                    //         gradient: GradientApp.blueG,
                    //         borderRadius: BorderRadius.only(
                    //             bottomLeft: Radius.circular(10),
                    //             topRight: Radius.circular(10))),
                    //     child: Icon(Icons.shopping_cart_outlined,
                    //         color: Colors.red),
                    //   ),
                    // )
                  ],
                ),
                Container(
                  width: kSmWidth * .6,
                  margin: EdgeInsets.only(
                      top: Get.height * .005, left: Get.width * .008),
                  child: Text(produit.titre,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(color: ColorsApp.secondBlue, fontSize: 12)),
                ),
                Container(
                  width: kSmWidth * .6,
                  margin: EdgeInsets.only(
                      top: Get.height * .005, left: Get.width * .008),
                  child: Text('XAF ' + produit.prix.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ColorsApp.marron,
                          fontSize: 12,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  width: kSmWidth * .6,
                  margin: EdgeInsets.only(
                      top: Get.height * .005, left: Get.width * .008),
                  child: Text('XAF ' + produit.prix.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: ColorsApp.black,
                          decorationThickness: 2.85,
                          color: ColorsApp.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600)),
                ),
              ]) /* ) */),
      onTap: () {
        Get.to(() => ProduitView(produit: produit, index: index));
        // Get.toNamed(AppLinks.PRODUCT +
        //     '?index=${index}&type=home&codeProduit=${produit.codeProduit}&id=${produit.id}&titre=${produit.titre}&description=${produit.description}&image=${ApiUrl.baseUrl}/images/produits/${produit.images[0].src}');
      },
    );
  }
}
