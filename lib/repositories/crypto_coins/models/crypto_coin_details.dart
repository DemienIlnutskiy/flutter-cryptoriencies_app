import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_coin_details.g.dart';

@JsonSerializable()
class CryptoCoinDetails extends Equatable {
  const CryptoCoinDetails({
    required this.priceInUSD,
    required this.imageUrl,
    required this.minPriceInUSD,
    required this.maxPriceInUSD,
  });

  @JsonKey(name: 'PRICE')
  final double priceInUSD;

  @JsonKey(name: 'LOW24HOUR')
  final double minPriceInUSD;

  @JsonKey(name: 'HIGH24HOUR')
  final double maxPriceInUSD;

  @JsonKey(name: 'IMAGEURL')
  final String imageUrl;

  String get fullImageUrl => 'https://www.cryptocompare.com$imageUrl';

  factory CryptoCoinDetails.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCoinDetailsToJson(this);

  @override
  List<Object?> get props =>
      [priceInUSD, minPriceInUSD, maxPriceInUSD, imageUrl];
}
