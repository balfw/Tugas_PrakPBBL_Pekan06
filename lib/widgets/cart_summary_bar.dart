import 'package:flutter/material.dart';
import 'primary_button.dart';

class CartSummaryBar extends StatelessWidget {
  final int totalItem;
  final int totalHarga;
  final VoidCallback onKosongkan;

  const CartSummaryBar({
    super.key,
    required this.totalItem,
    required this.totalHarga,
    required this.onKosongkan,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      color: theme.colorScheme.surfaceContainerHighest,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              '$totalItem item • Rp$totalHarga',
              style: theme.textTheme.titleMedium,
            ),
          ),
          const SizedBox(width: 8),
          PrimaryButton(
            label: 'Kosongkan',
            icon: Icons.delete_outline,
            onPressed: onKosongkan,
          ),
        ],
      ),
    );
  }
}
