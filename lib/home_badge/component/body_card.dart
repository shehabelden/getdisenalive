import 'package:flutter/material.dart';

class BodyCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? type;
  final int? rate;
  const BodyCard({
    super.key,
    required this.image,
    required this.name,
    required this.rate,
    required this.type,
  });
  @override
  Widget build(BuildContext context) {
    // print(image!);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        height: 90,
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.network(image!)),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 1, child: Text(name!)),
                      Expanded(flex: 1, child: Text(type!)),
                      Expanded(flex: 1, child: Text("Pet Love : ${rate!}")),
                    ],
                  ),
                ))
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(120 / 8)),
      ),
    );
  }
}
