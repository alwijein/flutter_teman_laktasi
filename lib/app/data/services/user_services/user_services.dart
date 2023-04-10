part of '../services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(UserModel users) async {
    _userCollection.doc(users.id).set({
      'fullname': users.fullname,
      'email': users.email,
      'alamat': users.alamat,
      'nifasHariKe': users.nifasHariKe,
      'jumlahAnak': users.jumlahAnak,
      'lokasiFasyankes': users.lokasiFasyankes,
      'noHp': users.noHp,
      'role': users.role,
    });
  }

  static Future<UserModel> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    var data = snapshot.data() as Map;
    return UserModel(
      fullname: data['fullname'],
      email: data['email'],
      alamat: data['alamat'],
      nifasHariKe: data['nifasHariKe'],
      jumlahAnak: data['jumlahAnak'],
      lokasiFasyankes: data['lokasiFasyankes'],
      noHp: data['noHp'],
      role: data['role'],
    );
  }

  static Future<List<UserModel>> getUsers(String lokasiFasyankes) async {
    List<UserModel> users = [];
    QuerySnapshot maps = await _userCollection
        .where('lokasiFasyankes', isEqualTo: lokasiFasyankes)
        .get();

    for (var e in maps.docs) {
      if (e['role'] != 'admin') {
        users.add(
          UserModel(
            fullname: e['fullname'],
            email: e['email'],
            alamat: e['alamat'],
            nifasHariKe: e['nifasHariKe'],
            jumlahAnak: e['jumlahAnak'],
            lokasiFasyankes: e['lokasiFasyankes'],
            noHp: e['noHp'],
            role: e['role'],
          ),
        );
      }
    }
    return users;
  }

  static Future<void> updateData(String email, String id) async {
    await _userCollection.doc(email).update({'name': 'id'});
  }
}
