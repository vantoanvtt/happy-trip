import 'dart:ffi';
import 'package:flutter/material.dart';

class TransportAttr {
  final String category;
  final String description;
  final int discount;
  final double price;
  final String urlImg;

  TransportAttr(
      {required this.category,
      required this.description,
      required this.discount,
      required this.price,
      required this.urlImg});

  static List<TransportAttr> dataDemo = [
    TransportAttr(
        category: "Nội thành",
        description:
            "[Nội thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Nội thành",
        description:
            "[Nội thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Nội thành",
        description:
            "[Nội thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Nội thành",
        description:
            "[Nội thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Nội thành",
        description:
            "[Nội thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Ngoại thành",
        description:
            "[Ngoại thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Ngoại thành",
        description:
            "[Ngoại thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Ngoại thành",
        description:
            "[Ngoại thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Ngoại thành",
        description:
            "[Ngoại thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
    TransportAttr(
        category: "Ngoại thành",
        description:
            "[Ngoại thành] Xe du lịch giá rẻ cho mọi đối tượng phù hợp với túi tiền của người đang trong covid :((",
        discount: 20,
        price: 500.500,
        urlImg:
            "https://media-cdn.laodong.vn/Storage/NewsPortal/2019/6/10/738354/595097.jpg"),
  ];
}
