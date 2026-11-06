import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Liburan Keluarga"),
          backgroundColor:  Colors.green,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://media.istockphoto.com/id/916928230/id/foto/bunga-kuning-di-langit-biru-atau-langit-biru-pada-tampilan-naik.jpg?s=1024x1024&w=is&k=20&c=XI47BFA5Bj8njbB2KFLBRPzGPhYcnsn37w2dvFHY3FQ=',
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16,22,16,10),
                child: Text(
                  "Tentang Taman",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Taman bunga menjadi tempat rekreasi yang menawarkan pemnadangan berwarna-warni dan suasana yang menyegarkan.'
                  'Pengunjung dapat berjalan santai, berfoto bersama keluarga, serta menikmati waktu di ruang terbuka.'
                ),    
              ),

              const SizedBox(height: 24,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rencana Kunjungan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on, color: Colors.green
                          ),
                        SizedBox(width: 12,),
                        Text('Lokasi'),
                        Spacer(),
                        Text(
                          'Bandungan, Semarang',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time, color: Colors.green,
                        ),
                        SizedBox(width: 12),
                        Text('Jam Buka'),
                        Spacer(),
                        Text(
                          '08.00 - 17.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(
                          Icons.confirmation_num, color: Colors.green,
                        ),
                        SizedBox(width: 12),
                        Text('Harga Tiket'),
                        Spacer(),
                        Text(
                          'Rp25.000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: const Icon(Icons.nordic_walking),
                  label: const Text('Rencanakan Kunjungan'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(14)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }  

}
