import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default('-') String id,
    @Default('-') String fullname,
    @Default('-') String email,
    @Default('-') String noHp,
    @Default(0) int nifasHariKe,
    @Default(0) int jumlahAnak,
    @Default('-') String alamat,
    @Default('-') String lokasiFasyankes,
    @Default('-') String role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
