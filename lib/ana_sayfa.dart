import 'package:flutter/material.dart';
import 'package:liste_calismasi/sehir.dart';

class AnaSayfa extends StatelessWidget {
  List<Sehir> sehirler = [
    Sehir("İstanbul", 34, 15519267),
    Sehir("Ankara", 6, 5639076),
    Sehir("İzmir", 35, 4367251),
    Sehir("Bursa", 16, 3056120),
    Sehir("Antalya", 7, 2511700),
    Sehir("Adana", 1, 2237940),
    Sehir("Konya", 42, 2232374),
    Sehir("Şanlıurfa", 63, 2073614),
    Sehir("Gaziantep", 27, 2069364),
    Sehir("Kocaeli", 41, 1953035),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: sehirler.length, itemBuilder: _listeOgesiOlustur),
    );
  }

  Widget _listeOgesiOlustur(BuildContext context, int Index) {
    return Card(
      child: ListTile(
        title: Text(sehirler[Index].isim),
        subtitle: Text(sehirler[Index].nufus.toString()),
        trailing: Text(sehirler[Index].plakaKodu.toString()),
        leading: Icon(Icons.location_city),
      ),
      elevation: 4,
    );
  }
}
