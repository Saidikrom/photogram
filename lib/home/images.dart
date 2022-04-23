import 'package:flutter/material.dart';

class ImageData {
  final String id;
  final String imageUrl;

  const ImageData({
    @required required this.id,
    @required required this.imageUrl,
  });
}

const imageList = [
  ImageData(
    id: 'id-001',
    imageUrl: 'assets/1png',
  ),
  ImageData(
    id: 'id-002',
    imageUrl: 'assets/2.png',
  ),
  ImageData(
    id: 'id-003',
    imageUrl: 'assets/3.png',
  ),
  ImageData(
    id: 'id-004',
    imageUrl: 'assets/4.png',
  ),
  ImageData(
    id: 'id-005',
    imageUrl: 'assets/5.png',
  ),
  ImageData(
    id: 'id-006',
    imageUrl: 'assets/6.png',
  ),
  ImageData(
    id: 'id-007',
    imageUrl: 'assets/7.png',
  ),
  ImageData(
    id: 'id-008',
    imageUrl: 'assets/8.png',
  ),
];
