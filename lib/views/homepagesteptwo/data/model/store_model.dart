import 'package:notepad/views/homepagesteptwo/data/model/product_model.dart';

class StoreModelTwo {
  List<ProductsTwo>? products;
  int? total;
  int? skip;
  int? limit;
  StoreModelTwo({this.products, this.total, this.skip, this.limit});

  StoreModelTwo.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <ProductsTwo>[];
      json['products'].forEach((v) {
        products!.add(new ProductsTwo.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}
