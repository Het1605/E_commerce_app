import 'package:flutter/material.dart';


class DashboardText extends StatefulWidget {
  final String keywors,value;

  const DashboardText({super.key, required this.keywors, required this.value});


  @override
  State<DashboardText> createState() => _DashboardTextState();
}

class _DashboardTextState extends State<DashboardText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${widget.keywors} :', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
        Text('${widget.value} :', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),

      ],
    );
  }
}
