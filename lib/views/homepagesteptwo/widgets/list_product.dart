import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/prudact_cubit.dart';
import '../data/model/product_model.dart';
import 'item.dart';
import 'loading_center.dart';

class ProductList extends StatelessWidget {
  ProductList({
    super.key,
  });
  List<ProductsTwo> list = [];
  @override
  Widget build(BuildContext context) {
    // context.read<PrudactCubit>().getProudact();
    print("ssssssssssssssssProductList!!! ssssssssssssssssssss");
    return BlocListener<PrudactCubit, PrudactState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: BlocBuilder<PrudactCubit, PrudactState>(
        builder: (context, state) {
          print("sssssssssssssssssssBlocBuilder!!!!!sssssssssssssssss");
          if (state is ProductLoaded) {
            list = state.products;
          }
          if (state is ProductLoading) {
            return Center(child: LoadingCenter());
          }
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ProudactItem(product: list[index]);
            },
          );
        },
      ),
    );
  }
}
