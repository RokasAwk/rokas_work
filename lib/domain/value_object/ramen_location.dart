import 'package:cloud_firestore/cloud_firestore.dart';

class RamenLocation {
  final double xLocation;
  final double yLocation;
  final String shopName;

  RamenLocation({
    required this.xLocation,
    required this.yLocation,
    required this.shopName,
  });

  factory RamenLocation.empty() => RamenLocation(
        xLocation: 0,
        yLocation: 0,
        shopName: '',
      );

  RamenLocation copyWith({
    double? xLocation,
    double? yLocation,
    String? shopName,
  }) {
    return RamenLocation(
      xLocation: xLocation ?? this.xLocation,
      yLocation: yLocation ?? this.yLocation,
      shopName: shopName ?? this.shopName,
    );
  }

  factory RamenLocation.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return RamenLocation(
      xLocation: data?['xLocation'],
      yLocation: data?['yLocation'],
      shopName: data?['shopName'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "xLocation": xLocation,
      "yLocation": yLocation,
      "shopName": shopName,
    };
  }
}
