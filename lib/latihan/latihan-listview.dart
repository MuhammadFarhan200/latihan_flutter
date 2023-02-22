import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/product.dart';

class LatihanListView extends StatelessWidget {
  LatihanListView({Key? key}) : super(key: key);

   final List<Product> products = [
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/18/iphone-xr/gal/-1024w2/gsmarena_011.jpg',
      name: 'iPhone XR',
      description: 'iPhone XR is a smartphone designed and marketed by Apple Inc. It is the successor to the iPhone XS and iPhone XS Max, and was announced on September 12, 2018, alongside the iPhone XS and XS Max at the Steve Jobs Theater in the Apple Park campus. The iPhone XR is the first iPhone to feature a Liquid Retina display, which is a type of LCD display. It is also the first iPhone to feature a single-lens rear camera, and the first iPhone to feature a 12-megapixel camera.',
      price: 'Rp 10.000.000',
    ),
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/22/oppo-reno8/lifestyle/-1024w2/gsmarena_001.jpg',
      name: 'Oppo Reno8',
      description: 'The Oppo Reno8 is a smartphone designed and marketed by Oppo as part of the Reno series. It was announced on 12 August 2021 and released on 16 August 2021. It is the successor to the Oppo Reno7 Pro 5G.',
      price: 'Rp 9.000.000',
    ),
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/22/realme-10-pro-plus/lifestyle/-1024w2/gsmarena_004.jpg',
      name: 'Realme 10 Pro Plus',
      description: 'The Realme 10 Pro Plus is a smartphone designed and marketed by Realme as part of the Realme 10 series. It was announced on 12 August 2021 and released on 16 August 2021. It is the successor to the Realme 9 Pro.',
      price: 'Rp 8.000.000',
    ),
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/23/samsung-galaxy-s23-ultra/lifestyle/-1024w2/gsmarena_001.jpg',
      name: 'Samsung Galaxy S23 Ultra',
      description: 'The Samsung Galaxy S23 Ultra is a smartphone designed and marketed by Samsung as part of the Samsung Galaxy S series. It was announced on 12 August 2021 and released on 16 August 2021. It is the successor to the Samsung Galaxy S22 Ultra.', 
      price: 'Rp 7.000.000',
    ),
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/22/xiaomi-redmi-note-11/lifestyle/-1024w2/gsmarena_001.jpg',
      name: 'Xiaomi Redmi Note 11',
      description: 'The Xiaomi Redmi Note 11 is a smartphone designed and marketed by Xiaomi as part of the Redmi Note series. It was announced on 12 August 2021 and released on 16 August 2021. It is the successor to the Xiaomi Redmi Note 10.',
      price: 'Rp 6.000.000',
    ),
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/19/apple-iphone-11/lifestyle/-1024w2/gsmarena_001.jpg',
      name: 'Apple iPhone 11',
      description: 'The Apple iPhone 11 is a smartphone designed and marketed by Apple Inc. It is the twelfth generation of the iPhone. It was announced on September 10, 2019, alongside the higher-end iPhone 11 Pro and iPhone 11 Pro Max, at the Steve Jobs Theater in the Apple Park campus. The iPhone 11 features a 6.1-inch Liquid Retina display, an Apple-designed A13 Bionic chip, a dual-camera system on the back, and a single 12-megapixel camera on the front.',
      price: 'Rp 5.000.000',
    ),
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/19/apple-iphone-11-pro-max/lifestyle/-1024w2/gsmarena_007.jpg',
      name: 'Apple iPhone 11 Pro',
      description: 'The Apple iPhone 11 Pro is a smartphone designed and marketed by Apple Inc. It is the thirteenth generation of the iPhone. It was announced on September 10, 2019, alongside the iPhone 11 and iPhone 11 Pro Max, at the Steve Jobs Theater in the Apple Park campus. The iPhone 11 Pro features a 5.8-inch Super Retina XDR display, an Apple-designed A13 Bionic chip, a triple-camera system on the back, and a single 12-megapixel camera on the front.',
      price: 'Rp 4.000.000',
    ),
    Product(
      img: 'https://fdn.gsmarena.com/imgroot/reviews/22/apple-iphone-14/lifestyle/-1024w2/gsmarena_014.jpg',
      name: 'Apple iPhone 11 Pro Max',
      description: 'The Apple iPhone 11 Pro Max is a smartphone designed and marketed by Apple Inc. It is the fourteenth generation of the iPhone. It was announced on September 10, 2019, alongside the iPhone 11 and iPhone 11 Pro, at the Steve Jobs Theater in the Apple Park campus. The iPhone 11 Pro Max features a 6.5-inch Super Retina XDR display, an Apple-designed A13 Bionic chip, a triple-camera system on the back, and a single 12-megapixel camera on the front.',
      price: 'Rp 3.000.000',
    ),
   ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Image.network(
                      products[index].img,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          Text(
                            products[index].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            products[index].description,
                            maxLines: 3,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            products[index].price,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
