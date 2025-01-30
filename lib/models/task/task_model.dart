import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@immutable
@Freezed(makeCollectionsUnmodifiable: false)
class TaskModel with _$TaskModel {
  const TaskModel._();

  const factory TaskModel({
    @Default('') String taskName,
    @Default(false) bool checked,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
