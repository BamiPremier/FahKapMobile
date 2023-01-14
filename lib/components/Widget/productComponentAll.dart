// ignore: must_be_immutable
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fahkapmobile/model/data/ProduitModel.dart';
import 'package:fahkapmobile/styles/textStyle.dart';
import 'package:fahkapmobile/utils/Services/routing.dart';
import 'package:fahkapmobile/utils/api/apiUrl.dart';
import 'package:get/get.dart';
import 'package:fahkapmobile/styles/colorApp.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductComponentAll extends StatelessWidget {
  ProduitModel produit;
  var height, index;

  ProductComponentAll(
      {required this.produit, required this.index, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: produit.images[0].src,
          imageBuilder: (context, imageProvider) {
            return Container(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(produit.titre,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(color: ColorsApp.black, fontSize: 12)),
                      Text('XAF ' + produit.prix.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
              decoration: BoxDecoration(
                color: ColorsApp.greySecond,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
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
            return Container(
                height: kMdHeight * .15,
                width: Get.width * .5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                )));
          },
        ),
      ),
      onTap: () {
        Get.toNamed(AppLinks.PRODUCT +
            '?index=${index}&type=0&id=${produit.id}&titre=${produit.titre}&description=${produit.description}&image=${ApiUrl.baseUrl}/images/produits/${produit.images[0].src}');
      },
    );
  }
}
