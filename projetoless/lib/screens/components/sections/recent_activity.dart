import 'package:flutter/material.dart';
import 'package:projetoless/screens/components/box_card.dart';
import 'package:projetoless/screens/components/color_dot.dart';
import 'package:projetoless/screens/components/content_division.dart';
import 'package:projetoless/screens/components/themes/theme_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['dotlar']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saída'),
                    Text(
                      'R\$ 9900.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: ColorDot(color: ThemeColors.recentActivity['dotazul']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Entrada'),
                    Text('R\$ 9900.97',
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Limites de gastos: R\$735.93'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
            color: Color.fromRGBO(40, 218, 242, 1.0),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        const Text(
            'Esse mês você gastou R\$ 1.500.00 com jogos. Procure um psicólogo!'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Diga-me como!',
            style: TextStyle(
              color: Color.fromRGBO(40, 218, 242, 1.0),
            ),
          ),
        ),
      ],
    );
  }
}
