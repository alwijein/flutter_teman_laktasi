part of '../services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // Fugnsi Untuk Melakukan SignUp

  static Future<bool> signUp({
    required String fullname,
    required String email,
    required String noHp,
    required String nifasHariKe,
    required String jumlahAnak,
    required String lokasiFasyankes,
    required String alamat,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // ...

      UserModel user = userCredential.user!.convertToUser(
        fullname: fullname,
        email: email,
        noHp: noHp,
        alamat: alamat,
        nifasHariKe: nifasHariKe,
        jumlahAnak: jumlahAnak,
        lokasiFasyankes: lokasiFasyankes,
      );

      // ...

      await UserServices.updateUser(user);

      return true;

      // ...

    } catch (e) {
      return false;
    }
  }

  // Fugnsi Untuk Melakukan SignIn

  static Future<bool> signIn(String email, String password) async {
    try {
      UserCredential authCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel? users = await authCredential.user!.fromFireStore();
      return true;
    } catch (e) {
      return false;
    }
  }

  // Fugnsi Untuk Melakukan SignOut

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  // Fungsi untuk melakukan pengecekan state now

  static Stream<User?> get userStream => _auth.authStateChanges();
}

class SingInSingUpResult {
  final UserModel? users;
  final String? message;

  SingInSingUpResult({this.users, this.message});
}
