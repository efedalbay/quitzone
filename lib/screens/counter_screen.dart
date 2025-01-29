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
        title: Center(child: Text('Sayaçlar',
        style: Theme.of(context).textTheme.headlineMedium,)),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
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
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  CupertinoIcons.person_circle,
                  size: 50,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              accountName: const Text("Hoşgeldiniz"),
              accountEmail: null,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sigarasız geçen zaman",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "0",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Yıl",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "9",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("Ay",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "4",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hafta",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "0",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Gün",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "22",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Saat",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            "24",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("Dakika",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text("39",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Saniye",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text("325",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Milisn.",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sigara Sayacı",
                    style: Theme.of(context).textTheme.headlineMedium),
                const Icon(
                  Icons.smoke_free,
                  size: 35,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Günlük İçilen Sigara Miktarı: 12",
                    style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Toplam İçilmeyen Sigara Miktarı: 3425",
                    style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Para Sayacı",
                style: Theme.of(context).textTheme.headlineMedium),
                const Icon(Icons.currency_lira,size: 35,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Günlük Sigara Maliyeti:48",
                style: Theme.of(context).textTheme.headlineSmall),
                const Icon(Icons.currency_lira,size: 25,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Toplam Biriktirilen Para: 12697",
                style: Theme.of(context).textTheme.headlineSmall),
                const Icon(Icons.currency_lira,size: 25,),
              ],
            ),
            const SizedBox(height: 24),
            const Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Miktarlar",
                style: Theme.of(context).textTheme.headlineMedium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bir Günde İçilen Sigara Miktarı:",
                    style: Theme.of(context).textTheme.headlineSmall),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kullanılan Sigaranın Paket Fiyatı:",
                    style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(
                      width: 90,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Fiyatı Giriniz",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24,),
                const Divider(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
