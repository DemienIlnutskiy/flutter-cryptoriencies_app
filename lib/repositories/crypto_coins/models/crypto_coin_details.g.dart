// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_coin_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoCoinDetails _$CryptoCoinDetailsFromJson(Map<String, dynamic> json) =>
    CryptoCoinDetails(
      priceInUSD: (json['PRICE'] as num).toDouble(),
      imageUrl: json['IMAGEURL'] as String,
      minPriceInUSD: (json['LOW24HOUR'] as num).toDouble(),
      maxPriceInUSD: (json['HIGH24HOUR'] as num).toDouble(),
    );

Map<String, dynamic> _$CryptoCoinDetailsToJson(CryptoCoinDetails instance) =>
    <String, dynamic>{
      'PRICE': instance.priceInUSD,
      'LOW24HOUR': instance.minPriceInUSD,
      'HIGH24HOUR': instance.maxPriceInUSD,
      'IMAGEURL': instance.imageUrl,
    };
