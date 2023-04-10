part of 'extensions.dart';

extension FirebaseUserExtension on User {
  UserModel convertToUser({
    required String fullname,
    required String email,
    required String noHp,
    required String nifasHariKe,
    required String jumlahAnak,
    required String lokasiFasyankes,
    required String alamat,
  }) =>
      UserModel(
        id: uid,
        fullname: fullname,
        role: 'user',
        alamat: alamat,
        email: email,
        nifasHariKe: int.parse(nifasHariKe),
        jumlahAnak: int.parse(jumlahAnak),
        lokasiFasyankes: lokasiFasyankes,
        noHp: noHp,
      );

  Future<UserModel?> fromFireStore() async => await UserServices.getUser(uid);
}
