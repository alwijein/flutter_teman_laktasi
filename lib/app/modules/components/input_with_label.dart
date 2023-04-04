part of 'components.dart';

class InputWithLabel extends StatelessWidget {
  const InputWithLabel({
    Key? key,
    required this.label,
    required this.hint,
    this.intputType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  final String label, hint;
  final TextInputType intputType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getPropertionateScreenWidht(16)),
      child: Column(
        children: [
          Text(
            label,
            style: subtitleTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          ),
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hint,
              suffixText: intputType == TextInputType.number ? 'Bulan' : null,
              suffixIcon: obscureText ? Icon(Icons.visibility) : null,
            ),
            keyboardType: intputType,
          ),
        ],
      ),
    );
  }
}
