import 'package:flutter/material.dart';
import 'package:projetoless/screens/components/box_card.dart';
import 'package:projetoless/screens/components/color_dot.dart';
import 'package:projetoless/screens/components/themes/theme_colors.dart';

class AccountPoints2 extends StatelessWidget {
  const AccountPoints2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _AccountPoints2()),
    );
  }
}

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}

class _AccountPoints2 extends StatelessWidget {
  const _AccountPoints2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
          ),
          Text(
            'Pontos Totais',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            '3000',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.recentActivity['dotlar']),
            ),
            Text(
              'Entrega gratis 15000pts',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ]),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.recentActivity['dotazul']),
            ),
            Text(
              '1 mês de streaming 300000pts',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ]),
        ],
      ),
    );
  }
}
