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

  void _submit({required bool isPaid}) {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      widget.onSubmit(_bookCount, _to, isPaid);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      backgroundColor: const Color(0xFFE3F2FD), // Light blue
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Top bar with title and cancel button (X)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add to Shelve",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: const Color(0xFF01411C),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.grey),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),

            const SizedBox(height: 8),

            /// Form Fields
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: '1',
                    decoration: InputDecoration(
                      labelText: 'Book Count',
                      labelStyle: const TextStyle(color: Color(0xFF01411C)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade500),
                      ),
                    ),
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
                  const SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'To',
                      labelStyle: const TextStyle(color: Color(0xFF01411C)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade500),
                      ),
                    ),
                    onSaved: (value) {
                      _to = value ?? '';
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            /// Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => _submit(isPaid: true),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF01411C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                  ),
                  child: const Text(
                    "Pay Here",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _submit(isPaid: false),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(color: Color(0xFF01411C), width: 1.5),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                  ),
                  child: const Text(
                    "Just Add to Shelve!",
                    style: TextStyle(color: Color(0xFF01411C)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
