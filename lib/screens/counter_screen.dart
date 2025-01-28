import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../themes/themes.dart';
import '../widgets/bottom_menu.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int gunlukSigaraMiktari = 0;

  void arttir() {
    setState(() {
      gunlukSigaraMiktari++;
    });
  }

  void azalt() {
    setState(() {
      if (gunlukSigaraMiktari > 0) gunlukSigaraMiktari--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Sayaçlar')),
        backgroundColor: const Color(0xFFBB86FC),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sigara Sayacı"),
                Icon(Icons.smoke_free),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Günlük İçilen Sigara Miktarı: 12 Adet"),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Toplam İçilmeyen Sigara Miktarı: 3425 Adet"),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Para Sayacı"),
                Icon(Icons.currency_lira),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Günlük Sigara Maliyeti:"),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Toplam Biriktirilen Para: 12697"),
                Icon(Icons.currency_lira),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Miktarlar"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Bir Günde İçilen Sigara Miktarı:"),
                    IconButton(
                      onPressed: azalt,
                      icon: const Icon(Icons.remove, color: Colors.red),
                    ),
                    Text(
                      gunlukSigaraMiktari.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: arttir,
                      icon: const Icon(Icons.add, color: Colors.green),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Kullanılan Sigaranın Paket Fiyatı:"),
                    IconButton(
                      onPressed: azalt,
                      icon: const Icon(Icons.remove, color: Colors.red),
                    ),
                    Text(
                      gunlukSigaraMiktari.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: arttir,
                      icon: const Icon(Icons.add, color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
