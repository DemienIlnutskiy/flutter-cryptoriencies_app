import 'package:cryptoriencies_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});
  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  CryptoCoin? coin;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is CryptoCoin, '');

    coin = args as CryptoCoin;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final coinDetail = coin?.details;
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child:
                    Text('Choice crypta', style: theme.textTheme.labelSmall))),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.network(
              coinDetail!.fullImageUrl,
              height: 200,
            ),
            Text(
              coin!.name,
              style: theme.textTheme.bodyMedium,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 56, 56),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                '${coinDetail.priceInUSD}\$',
                style: theme.textTheme.bodyMedium,
              )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 56, 56),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Column(
                children: [
                  Row(children: [
                    Expanded(
                      child: Text(
                        'Hight 24 Hour',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    const VerticalDivider(width: 1.0),
                    Expanded(
                        child: Text(
                      '${coinDetail.maxPriceInUSD}\$',
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.end,
                    )),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Expanded(
                      child: Text(
                        'Low 24 Hour',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    const VerticalDivider(width: 1.0),
                    Expanded(
                        child: Text(
                      '${coinDetail.minPriceInUSD}\$',
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.end,
                    )),
                  ])
                ],
              )),
            ),
          ],
        ));
  }
}
