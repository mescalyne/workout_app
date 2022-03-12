import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class SecondEvent with _$SecondEvent {
  const factory SecondEvent.onLoad() = OnLoad;
}
