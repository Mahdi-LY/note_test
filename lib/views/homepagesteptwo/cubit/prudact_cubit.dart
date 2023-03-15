import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/model/product_model.dart';
import '../data/repository/productrepository.dart';

part 'prudact_state.dart';

class PrudactCubit extends Cubit<PrudactState> {
  PrudactCubit() : super(PrudactInitial()) {
    getProudact();
  }
  ProductRepository productRepository = ProductRepository();
  void getProudact() async {
    emit(ProductLoading());
    var resorce = await productRepository.getProducts();

    emit(ProductLoaded(products: resorce));
  }
}
