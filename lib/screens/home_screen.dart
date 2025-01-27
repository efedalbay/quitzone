import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:quitsmoke/routes/app_router.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF333333),),
        title: const Center(child: Text('Ana Sayfa')),
        backgroundColor:  const Color(0xFFBB86FC),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              context.go("/notifications");
            },
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo2.jpg"),
                  const SizedBox(height: 10),
                  const Text(
                    'Quit Zone',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                context.go("/home");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () {
                context.go("/profile");
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Takvim'),
              onTap: () {
                context.go("/calendar");
              },
            ),
            ListTile(
              leading: const Icon(Icons.schedule),
              title: const Text('Zaman'),
              onTap: () {
                context.go("/time");
              },
            ),
            ListTile(
              leading: const Icon(Icons.smoke_free),
              title: const Text('Sayaçlar'),
              onTap: () {
                context.go("/counter");
              },
            ),
            ListTile(
              leading: const Icon(Icons.outlined_flag),
              title: const Text('Hedefler'),
              onTap: () {
                context.go("/goals");
              },
            ),
            ListTile(
              leading: const Icon(Icons.emoji_events),
              title: const Text('Başarımlar'),
              onTap: () {
                context.go("/achievement");
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                context.go("/settings");
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Sigarasız geçen zaman",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 16),
            // Zaman Gösterimi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                timeBox("0", "Yıl"),
                timeBox("9", "Ay"),
                timeBox("4", "Hafta"),
                timeBox("0", "Gün"),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                timeBox("22", "Saat"),
                timeBox("24", "Dakika"),
                timeBox("39", "Saniye"),
                timeBox("325", "Milisn."),
              ],
            ),
            const SizedBox(height: 24),
            // Sağlık Durumu ve Para Bilgileri
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("İçilmeyen Sigaralar"),
                    Icon(Icons.smoke_free),
                    Text("3425")
                  ],
                ),
                Column(
                  children: [
                    Text("Biriktirilen Para"),
                    Icon(Icons.currency_lira),
                    Text("12697₺"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Sağlık"),
                    Icon(Icons.favorite),
                    Text("Sağlık Bilgileri"),
                  ],
                ),
                Column(
                  children: [
                    Text("Kazanılan Zaman"),
                    Icon(Icons.timer),
                    Text("Sigara İçmeyerek 4 Gün Kazandınız.")
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Başarılar"),
                    Icon(Icons.emoji_events),
                    Text("3 Başarımınız Var."),
                  ],
                ),
                Column(
                  children: [
                    Text("Hedefler"),
                    Icon(Icons.outlined_flag),
                    Text("2 Hedefinizi Başardınız."),
                  ],
                ),
              ],
            ),
            //Takvim
            const SizedBox(height: 20),
            TableCalendar(
              firstDay: DateTime.utc(2000, 1, 1),
              lastDay: DateTime.utc(2100, 12, 31),
              focusedDay: DateTime.now(),
              calendarFormat: CalendarFormat.month,
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
      // Alt navigasyon çubuğu
      bottomNavigationBar: const BottomMenu(),
    );
  }

  // Zaman Bilgisi Widget'ı
  Widget timeBox(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
