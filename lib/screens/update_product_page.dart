import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_ptoduct.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textformfield.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'Update Product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? NameProduct, desc, image;

  num? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Update Product',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'DancingScript',
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 120,
                ),
                CustomTextfield(
                  onChanged: (data) {
                    NameProduct = data;
                  },
                  hintText: "Product Name",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                    onChanged: (data) {
                      desc = data;
                    },
                    hintText: "description"),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                    onChanged: (data) {
                      price = data;
                    },
                    inputType: TextInputType.number,
                    hintText: "price"),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                    onChanged: (data) {
                      image = data;
                    },
                    hintText: "image"),
                const SizedBox(
                  height: 20,
                ),
                
                
                CustomButton(
                    title: "Update",
                    onPressed: () {
                      isLoading = true;
                      print(price);
                      print(product.price);
                      print(price.runtimeType);
                      print(product.price.runtimeType);
                      setState(() {});
                       updateProduct(product);
                      try {
                       
                        print('succes');
                      } catch (e) {
                        print(e.toString());
                      }
                      isLoading = false;
                      setState(() {});
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductModel product) {
    UpdateProduct().updateProduct(
        title: NameProduct == null ? product.title : NameProduct!,
        price: price == null ? product.price : price!,
        desc: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        category: product.category.toString());
   
  }
}
