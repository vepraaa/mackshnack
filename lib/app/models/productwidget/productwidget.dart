import 'package:freezed_annotation/freezed_annotation.dart';

part 'productwidget.freezed.dart';
part 'productwidget.g.dart';

@freezed
class ProductWidget with _$ProductWidget {

  factory ProductWidget() = _ProductWidget;

  factory ProductWidget.fromJson(Map<String, dynamic> json) => _$ProductWidgetFromJson(json);
}