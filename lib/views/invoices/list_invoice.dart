import 'package:flutter/material.dart';
import 'package:poster_maker/views/invoices/add_invoice.dart';

class ListInvoiceScreen extends StatelessWidget {
  const ListInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final invoices = [
      {'number': '#1234565', 'date': '09/05/2025'},
      {'number': '#1234565', 'date': '09/05/2025'},
      {'number': '#1234565', 'date': '09/05/2025'},
      {'number': '#1234565', 'date': '09/05/2025'},
    ];

    return Scaffold(
     appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: AppBar(
            backgroundColor: const Color(0xFF175889),
            title: const Text(
              'Get invoice',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            elevation: 0,
          ),
        ),
      ),
      backgroundColor:  Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: invoices.length,
        itemBuilder: (context, index) {
          final invoice = invoices[index];
          return Card(
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              
              borderRadius: BorderRadius.circular(10),
              
            ),
            elevation: 2,
            child: ListTile(
              title:const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    'Invoice Number',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                   Text(
                    'Invoice Date',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      invoice['number']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      invoice['date']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // Navigate to invoice detail if needed
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1565C0), // Blue
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>AddInvoice()));
            },
            child: const Text(
              '+ Create New Invoice',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
