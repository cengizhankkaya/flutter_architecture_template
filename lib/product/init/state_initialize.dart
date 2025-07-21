import 'package:architecture_template/product/state/container/index.dart';
import 'package:architecture_template/product/state/view_model/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StateInitialize extends StatelessWidget {
  const StateInitialize({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: ProductStateItems.productViewModel),
      ],
      child: child,
    );
  }
}
