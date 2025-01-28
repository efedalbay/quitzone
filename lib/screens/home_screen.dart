import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../themes/themes.dart';
import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Center(child: Text('Ana Sayfa')),
        backgroundColor: const Color(0xFFBB86FC),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              context.go("/notifications");
            },
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
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
            const Spacer(),
            const Divider(),
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
            const Text("Sigarasız geçen zaman"),
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
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment:CrossAxisAlignment.start, 
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("İçilmeyen Sigaralar",
                            textAlign: TextAlign.center),
                        SizedBox(height:4), 
                        Icon(Icons.smoke_free),
                        SizedBox(height: 4),
                        Text("3425"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Biriktirilen Para", textAlign: TextAlign.center),
                        SizedBox(height: 4),
                        Icon(Icons.currency_lira),
                        SizedBox(height: 4),
                        Text("12697₺"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Sağlık", textAlign: TextAlign.center),
                        SizedBox(height: 4),
                        Icon(Icons.favorite),
                        SizedBox(height: 4),
                        Text("Sağlık Bilgileri"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Kazanılan Zaman", textAlign: TextAlign.center),
                        SizedBox(height: 4),
                        Icon(Icons.timer),
                        SizedBox(height: 4),
                        Text("4 Gün Kazandınız."),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Başarılar", textAlign: TextAlign.center),
                        SizedBox(height: 4),
                        Icon(Icons.emoji_events),
                        SizedBox(height: 4),
                        Text("3 Başarımınız Var."),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Hedefler", textAlign: TextAlign.center),
                        SizedBox(height: 4),
                        Icon(Icons.outlined_flag),
                        SizedBox(height: 4),
                        Text("2 Hedefinizi Başardınız."),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Takvim
            const SizedBox(height: 6),
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
                  color: Colors.purple,
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
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 10)),
      ],
    );
  }
}
