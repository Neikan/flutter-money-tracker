// Flutter imports:
import 'package:flutter/material.dart';

const String _errorResponse = 'При получении данных возникла ошибка:';

class FMTErrorData extends StatelessWidget {
  final String text;

  const FMTErrorData({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(_errorResponse),
          Text(text),
        ],
      ),
    );
  }
}
