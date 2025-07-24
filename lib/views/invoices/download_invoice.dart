import 'package:flutter/material.dart';

class DownloadInvoice extends StatelessWidget {
  const DownloadInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Get invoice",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.edit, size: 20),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Invoice",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("Date: 02-05-2025"),
                  Text("Invoice: #123456"),
                  SizedBox(height: 12),
                  Divider(),
                  Row(
                    children: [
                      Expanded(
                          child: Text("DESCRIPTION",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      SizedBox(
                          width: 50,
                          child: Text("QTY",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      SizedBox(
                          width: 68,
                          child: Text("SUBTOTAL",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(child: Text("Poster")),
                      SizedBox(width: 40, child: Text("01")),
                      SizedBox(width: 70, child: Text("₹250")),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Text("Poster")),
                      SizedBox(width: 40, child: Text("01")),
                      SizedBox(width: 70, child: Text("₹250")),
                    ],
                  ),
                  SizedBox(height: 10),
                  DottedLine(),
                  SizedBox(height: 8),
                  Text("Total Items"),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub Total"),
                      Text("₹225.00",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount"),
                      Text("₹10.00",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tax"),
                      Text("₹22.00",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 8),
                  DottedLine(),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "₹247.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.download, color: Colors.white),
                    label: const Text(
                      "Download",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.share, color: Colors.white),
                    label: const Text(
                      "Share",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Dotted Line widget
class DottedLine extends StatelessWidget {
  final double height;
  final double dashWidth;
  final Color color;

  const DottedLine({
    this.height = 1,
    this.dashWidth = 4,
    this.color = Colors.grey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
