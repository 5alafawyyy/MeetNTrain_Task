import 'package:flutter/material.dart';
import 'package:meet_n_train_task/domain/entities/event.dart';
import 'package:meet_n_train_task/presentation/resources/strings_manager.dart';

class PaymetPart extends StatelessWidget {
  const PaymetPart({super.key, required this.data});

  final Event data;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            (data.paymentMethod == AppStrings.cashOnline)
                ? Row(
                    children: const [
                      Icon(Icons.paid_outlined),
                      Icon(Icons.payment_outlined),
                      Icon(Icons.wallet_outlined),
                    ],
                  )
                : (data.paymentMethod == AppStrings.online)
                    ? Row(
                        children: const [
                          Icon(Icons.payment_outlined),
                          Icon(Icons.wallet_outlined),
                        ],
                      )
                    : const Icon(Icons.paid_outlined),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              (data.price == 0)
                  ? AppStrings.free
                  : '${AppStrings.aed} ${data.price!.toDouble()}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ],
    );
  }
}
