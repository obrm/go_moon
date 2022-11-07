import 'package:flutter/material.dart';

class CustomDropdownWidget extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownWidget({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: DropdownButton(
          underline: Container(),
          value: values.first,
          dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
          style: const TextStyle(
            color: Colors.white,
          ),
          onChanged: (_) {},
          items: values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList()),
    );
    ;
  }
}
