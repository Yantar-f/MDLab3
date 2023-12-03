import 'package:flutter/material.dart';

class TariffsList extends StatelessWidget {
  const TariffsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescribedTariffCard(
          Icon(Icons.ac_unit, size: 15, color: Theme.of(context).primaryColor,),
          'Изменить суточный лимит',
          'На платежи и переводы',
        ),
        Divider(),
        DescribedTariffCard(
          Icon(Icons.ac_unit, size: 15, color: Theme.of(context).primaryColor,),
          'Переводы без комиссии',
          'Показать остаток в этом месяце',
        ),
        Divider(),
        TariffCard(
          Icon(Icons.ac_unit, size: 15, color: Theme.of(context).primaryColor,),
          'Информация о тарифах и лимитах',
        ),
      ],
    );
  }
}

class TariffCard extends StatelessWidget {
  const TariffCard(this._icon, this._title, {super.key});

  final Icon _icon;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {},
      child:  Row(
        children: [
          _icon,
          Text(
            _title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 13,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class DescribedTariffCard extends TariffCard {
  const DescribedTariffCard(super._icon, super.title, this._description,  {super.key});

  final String _description;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            _icon,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                Text(
                  _description,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 13,
              color: Colors.grey,
            )
          ],
        ),
    );
  }
}
