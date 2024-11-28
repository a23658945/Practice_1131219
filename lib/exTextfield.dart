import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: TextField(
          controller: _controller,
          style: const TextStyle(color: Colors.blue),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'username',
          ),
          onEditingComplete: () {
            print('onEditingComplete');
          },
          onChanged: (v) {
            print('onChanged:' + v);
          },
          onSubmitted: (v) {
            FocusScope.of(context).requestFocus(_focusNode);
            print('onSubmitted:' + v);
            _controller.clear();
          },
        ));
  }
}

