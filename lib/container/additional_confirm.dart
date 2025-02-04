import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdditionalConfirm extends StatefulWidget {
  final String contentText;
  final VoidCallback onYes,onNo;
  const AdditionalConfirm({super.key,required this.contentText,required this.onNo, required this.onYes});

  @override
  State<AdditionalConfirm> createState() => _AdditionalConfirmState();
}

class _AdditionalConfirmState extends State<AdditionalConfirm> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Are yoy sure'),
      content: Text(widget.contentText),
      actions: [
        TextButton(onPressed: widget.onNo, child: Text('No')),
        TextButton(onPressed: widget.onYes, child: Text('Yes')),

      ],
    );
  }
}
