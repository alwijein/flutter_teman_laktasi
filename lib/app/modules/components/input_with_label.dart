part of 'components.dart';

class InputWithLabel extends StatelessWidget {
  const InputWithLabel({
    Key? key,
    required this.label,
    required this.hint,
    this.intputType = TextInputType.text,
    this.obscureText = false,
    this.textController,
  }) : super(key: key);

  final String label, hint;
  final TextInputType intputType;
  final bool obscureText;
  final TextEditingController? textController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getPropertionateScreenWidht(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: subtitleTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenWidht(8),
          ),
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hint,
              suffixIcon: obscureText ? Icon(Icons.visibility) : null,
            ),
            keyboardType: intputType,
            controller: textController,
          ),
        ],
      ),
    );
  }
}
