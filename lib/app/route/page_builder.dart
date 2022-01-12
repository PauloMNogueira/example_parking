import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';

abstract class AppBasePage<C> extends GetView<C> {
  abstract final String routeName;

  const AppBasePage({Key? key}) : super(key: key);

  Bindings createBindings();
}

class AppPageBuilder extends GetPage {
  AppPageBuilder(AppBasePage page)
      : super(
            name: page.routeName,
            page: () => page,
            binding: page.createBindings());
}

class Result<RT> {
  static const OK = 0;
  static const ERROR = -1;

  Result(this.code, this._data);

  final int code;
  final RT? _data;

  bool get isSuccess => code == OK;
  bool get isError => code == ERROR;

  static Result success<RT>({RT? data}) => Result(OK, data);
  static Result error<RT>({RT? data}) => Result(ERROR, data);

  RT? get data => _data;
}
