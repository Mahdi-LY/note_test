part of 'prudact_cubit.dart';

@immutable
abstract class PrudactState {}

class PrudactInitial extends PrudactState {}

class ProductLoaded extends PrudactState {
  final List<ProductsTwo> products;

  ProductLoaded({required this.products});
}

class ProductLoading extends PrudactState {}
