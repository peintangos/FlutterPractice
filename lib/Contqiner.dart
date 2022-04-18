import 'package:flutter/material.dart';

Widget _buildImageColumn() {
  return Container(
    decoration: BoxDecoration(color: Colors.black12),
    child: Column(children: [],),);
}

Widget _buildDecoratedImage(int imageIndex) =>
    Expanded(
      child: Container(decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: BorderRadius.all(Radius.circular(8))),),
    );

Widget _buildImageRow(int imageIndex) =>
    Row(
      children: [
        _buildDecoratedImage(imageIndex),
        _buildImageRow(imageIndex + 1)
      ],
    );

Widget _buildGrid() =>
    GridView.extent(maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [],);

List<Container> _buildGridTileList(int count) =>
    List.generate(count, (index) => Container(child: Image.asset(".../"),));