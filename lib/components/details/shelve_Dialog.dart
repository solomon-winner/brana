import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelveDialog extends ConsumerStatefulWidget {
  final double bookPrice;
  final int maxCount; // 👈 Max number of available books
  final void Function(int bookCount, String to, bool isPaid, double totalPrice) onSubmit;

  const ShelveDialog({
    super.key,
    required this.onSubmit,
    required this.bookPrice,
    required this.maxCount,
  });

  @override
  ConsumerState<ShelveDialog> createState() => _ShelveDialogState();
}

class _ShelveDialogState extends ConsumerState<ShelveDialog> {
  final _formKey = GlobalKey<FormState>();
  int _bookCount = 1;
  String _to = 'Myself';
  String _email = '';
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.bookPrice;
  }

  void _updateTotalPrice(String value) {
    final count = int.tryParse(value) ?? 0;
    setState(() {
      _bookCount = count;
      totalPrice = count * widget.bookPrice;
    });
  }

  void _submit({required bool isPaid}) {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      final target = _to == 'Gift' ? _email : _to;
      widget.onSubmit(_bookCount, target, isPaid, totalPrice);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      backgroundColor: const Color(0xFFE3F2FD),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
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

            // Form
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Book Count
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
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
                            if (num > widget.maxCount) {
                              return 'Only ${widget.maxCount} books available';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _bookCount = int.parse(value!);
                          },
                          onChanged: _updateTotalPrice,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Total: \$${totalPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF01411C),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // To: Dropdown
                  DropdownButtonFormField<String>(
                    value: _to,
                    items: const [
                      DropdownMenuItem(value: 'Myself', child: Text('Myself')),
                      DropdownMenuItem(value: 'Gift', child: Text('Gift')),
                    ],
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
                    onChanged: (value) {
                      setState(() => _to = value ?? 'Myself');
                    },
                  ),

                  const SizedBox(height: 12),

                  // Conditional Email Field
                  if (_to == 'Gift')
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Recipient Email',
                        labelStyle: const TextStyle(color: Color(0xFF01411C)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade700),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (_to == 'Gift' && (value == null || !value.contains('@'))) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value ?? '';
                      },
                    ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => _submit(isPaid: true),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF01411C),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  ),
                  child: const Text("Pay Here", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () => _submit(isPaid: false),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(color: Color(0xFF01411C), width: 1.5),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
