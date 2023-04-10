part of 'components.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    required this.listUser,
  });
  final UserModel listUser;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Get.toNamed(
          Routes.CHAT,
          arguments: {'user': listUser, 'isFromUser': false},
        );
      },
      child: ListTile(
        title: Text(
          listUser.fullname.toString(),
          style: primaryTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
        subtitle: Text(
          listUser.email.toString(),
          style: subtitleTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
