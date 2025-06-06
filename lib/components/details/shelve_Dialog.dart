import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelveDialog extends ConsumerStatefulWidget {
  final void Function(int bookCount, String to, bool isPaid) onSubmit;

  const ShelveDialog({super.key, required this.onSubmit});

  @override
  ConsumerState<ShelveDialog> createState() => _ShelveDialogState();
}

class _ShelveDialogState extends ConsumerState<ShelveDialog> {
  final _formKey = GlobalKey<FormState>();
  int _bookCount = 1;
  String _to = '';
  bool _isPaid = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add to Shelve"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: '1',
              decoration: InputDecoration(labelText: 'Book Count'),
              keyboardType: TextInputType.number,
              validator: (value) {
                final num = int.tryParse(value ?? '');
                if (num == null || num <= 0) {
                  return 'Enter a valid number';
                }
                return null;
              },
              onSaved: (value) {
                _bookCount = int.parse(value!);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'To'),
              onSaved: (value) {
                _to = value ?? '';
              },
            ),
            SwitchListTile(
              value: _isPaid,
              onChanged: (val) {
                setState(() {
                  _isPaid = val;
                });
              },
              title: Text("Is Paid"),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
              widget.onSubmit(_bookCount, _to, _isPaid);
              Navigator.of(context).pop();
            }
          },
          child: Text("Add"),
        ),
      ],
    );
  }
}
