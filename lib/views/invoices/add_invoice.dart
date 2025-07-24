// import 'package:flutter/material.dart';
// import 'package:poster_maker/views/invoices/download_invoice.dart';

// class AddInvoice extends StatelessWidget {
//   const AddInvoice({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final inputDecoration = InputDecoration(
//       contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(6),
//         borderSide: const BorderSide(color: Colors.grey),
//       ),
//     );

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             IconButton(
//               icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
//               onPressed: () => Navigator.pop(context),
//             ),
//             const Text(
//               'Create Invoice',
//               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             // Invoice Number & Date
//             Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // const Text('Invoice Number'),
//                       const SizedBox(height: 6),
//                       TextFormField(
//                         decoration: inputDecoration.copyWith(hintText: 'Enter Number',labelText: 'Invoice Number'),
                        
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // const Text('Date'),
//                       const SizedBox(height: 6),
//                       TextFormField(
//                         decoration: inputDecoration.copyWith(hintText: 'Enter date',labelText: 'Date'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),

//             // Name
//             TextFormField(
//               decoration: inputDecoration.copyWith(
//                 labelText: 'Name',
//                 hintText: 'Enter Name',
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Address
//             TextFormField(
//               decoration: inputDecoration.copyWith(
//                 labelText: 'Address',
//                 hintText: 'Enter Address',
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Service
//             TextFormField(
//               decoration: inputDecoration.copyWith(
//                 labelText: 'Service',
//                 hintText: 'Description',
//               ),
//             ),
//             const SizedBox(height: 16),

//             // Price & Paid
//             Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     decoration: inputDecoration.copyWith(
//                       labelText: 'Price',
//                       hintText: 'Enter',
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: inputDecoration.copyWith(
//                       labelText: 'Paid',
//                       hintText: 'Enter',
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),

//             // GST
//             TextFormField(
//               decoration: inputDecoration.copyWith(
//                 labelText: 'GST',
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Summary
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade100,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 children: [
//                   _summaryRow('Total Items', '03'),
//                   _summaryRow('Sub Total', '₹225.00'),
//                   _summaryRow('Discount', '₹10.00'),
//                   _summaryRow('Tax', '₹22.00'),
//                   const Divider(),
//                   _summaryRow(
//                     'Total',
//                     '₹247.00',
//                     valueColor: Colors.blue,
//                     isBold: true,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 24),

//             // Save Button
//             SizedBox(
//               width: double.infinity,
//               height: 48,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>DownloadInvoice()));
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFF1565C0),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text(
//                   'Save',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _summaryRow(String label, String value,
//       {Color valueColor = Colors.black, bool isBold = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(label),
//           Text(
//             value,
//             style: TextStyle(
//               color: valueColor,
//               fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }











import 'package:flutter/material.dart';
import 'package:poster_maker/views/invoices/download_invoice.dart';

class AddInvoice extends StatefulWidget {
  const AddInvoice({super.key});

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
  bool withGST = true; // Default to "With GST"

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: Colors.grey),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
            const Text(
              'Create Invoice',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Invoice Number & Date
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 6),
                      TextFormField(
                        decoration: inputDecoration.copyWith(
                          hintText: 'Enter Number',
                          labelText: 'Invoice Number'
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 6),
                      TextFormField(
                        decoration: inputDecoration.copyWith(
                          hintText: 'Enter date',
                          labelText: 'Date'
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Name
            TextFormField(
              decoration: inputDecoration.copyWith(
                labelText: 'Name',
                hintText: 'Enter Name',
              ),
            ),
            const SizedBox(height: 16),

            // Address
            TextFormField(
              decoration: inputDecoration.copyWith(
                labelText: 'Address',
                hintText: 'Enter Address',
              ),
            ),
            const SizedBox(height: 16),

            // Service
            TextFormField(
              decoration: inputDecoration.copyWith(
                labelText: 'Service',
                hintText: 'Description',
              ),
            ),
            const SizedBox(height: 16),

            // Price & Paid
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      labelText: 'Price',
                      hintText: 'Enter',
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextFormField(
                    decoration: inputDecoration.copyWith(
                      labelText: 'Paid',
                      hintText: 'Enter',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // GST Field - only show if withGST is true
            if (withGST) ...[
              TextFormField(
                decoration: inputDecoration.copyWith(
                  labelText: 'GST',
                ),
              ),
              const SizedBox(height: 16),
            ],

            // GST Radio Buttons
            Row(
              children: [
                Expanded(
                  child: RadioListTile<bool>(
                    title: const Text('With GST'),
                    value: true,
                    groupValue: withGST,
                    onChanged: (bool? value) {
                      setState(() {
                        withGST = value!;
                      });
                    },
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                  ),
                ),
                Expanded(
                  child: RadioListTile<bool>(
                    title: const Text('Without GST'),
                    value: false,
                    groupValue: withGST,
                    onChanged: (bool? value) {
                      setState(() {
                        withGST = value!;
                      });
                    },
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Summary
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  _summaryRow('Total Items', '03'),
                  _summaryRow('Sub Total', '₹225.00'),
                  _summaryRow('Discount', '₹10.00'),
                  if (withGST) _summaryRow('Tax', '₹22.00'),
                  const Divider(),
                  _summaryRow(
                    'Total',
                    withGST ? '₹247.00' : '₹215.00',
                    valueColor: Colors.blue,
                    isBold: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Save Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DownloadInvoice())
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF175889),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _summaryRow(String label, String value,
      {Color valueColor = Colors.black, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            value,
            style: TextStyle(
              color: valueColor,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}