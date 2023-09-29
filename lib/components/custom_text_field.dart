import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;

  const CustomTextField({super.key, required this.hintText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();
  bool _showClearIcon = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        _showClearIcon = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _clearText() {
    _controller.clear();
    setState(() {
      _showClearIcon = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      autofocus: true,
      cursorColor: Colors.orange,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        labelText: _showClearIcon ? widget.hintText : '',
        labelStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
        suffixIcon: _showClearIcon
            ? IconButton(
                icon: Icon(
                  Icons.cancel,
                  color: Colors.grey.shade400,
                ),
                onPressed: _clearText,
              )
            : null,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
