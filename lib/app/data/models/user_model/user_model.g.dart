// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String? ?? '-',
      fullname: json['fullname'] as String? ?? '-',
      email: json['email'] as String? ?? '-',
      noHp: json['noHp'] as String? ?? '-',
      nifasHariKe: json['nifasHariKe'] as int? ?? 0,
      jumlahAnak: json['jumlahAnak'] as int? ?? 0,
      alamat: json['alamat'] as String? ?? '-',
      lokasiFasyankes: json['lokasiFasyankes'] as String? ?? '-',
      role: json['role'] as String? ?? '-',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'email': instance.email,
      'noHp': instance.noHp,
      'nifasHariKe': instance.nifasHariKe,
      'jumlahAnak': instance.jumlahAnak,
      'alamat': instance.alamat,
      'lokasiFasyankes': instance.lokasiFasyankes,
      'role': instance.role,
    };
