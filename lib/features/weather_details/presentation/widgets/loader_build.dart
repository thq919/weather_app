import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoaderBuilder<T> extends StatelessWidget {
  final Cubit<T> cubit;
  final Widget Function(T) childBuilder;
  final Widget? loaderWidget;
  final bool Function(T) isLoading;
  const LoaderBuilder(
    this.cubit, {
    super.key,
    this.loaderWidget,
    required this.childBuilder,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Cubit<T>, T>(
      bloc: cubit,
      builder: (context, state) {
        if (isLoading(state)) {
          return Center(
              child: loaderWidget ?? const CircularProgressIndicator());
        }

        return childBuilder(state);
      },
    );
  }
}
