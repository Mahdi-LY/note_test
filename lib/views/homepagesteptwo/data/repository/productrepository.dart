import 'dart:convert';


import 'package:http/http.dart' as http;

import '../model/product_model.dart';
import '../model/store_model.dart';

class ProductRepository {
  Future<List<ProductsTwo>> getProducts() async {
    var uriGet = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(uriGet);
    var json = jsonDecode(response.body);
    var store = StoreModelTwo.fromJson(json);
    return store.products!;
  }
}
