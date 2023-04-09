import 'package:flutter/material.dart';

void addTicketDialog(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const _TextFieldWidget(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [_AddButtonWidget()]),
          ],
        ),
      ),
    ),
  );
}

class _AddButtonWidget extends StatelessWidget {
  const _AddButtonWidget();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 207, 62, 240),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text(
        'Готово',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class _TextFieldWidget extends StatelessWidget {
  const _TextFieldWidget();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: const Text(
          'Введите URL',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
