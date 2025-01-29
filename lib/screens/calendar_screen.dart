import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../themes/themes.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/calendar_widget.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Takvim',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
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

      // Drawer (Yan Menü)
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_left),
                  onPressed: () {},
                ),
                Text(
                  "Ocak 2025",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_right),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Expanded(child: Center(child: Text("Pzt"))),
                Expanded(child: Center(child: Text("Sal"))),
                Expanded(child: Center(child: Text("Çrş"))),
                Expanded(child: Center(child: Text("Prş"))),
                Expanded(child: Center(child: Text("Cum"))),
                Expanded(child: Center(child: Text("Cmt"))),
                Expanded(child: Center(child: Text("Pzr"))),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              children: [
                for (var week in [
                  ["29", "30", "31", "1", "2", "3", "4"],
                  ["5", "6", "7", "8", "9", "10", "11"],
                  ["12", "13", "14", "15", "16", "17", "18"],
                  ["19", "20", "21", "22", "23", "24", "25"],
                  ["26", "27", "28", "29", "30", "31", "1"]
                ])
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
                      children: [
                        for (var day in week)
                          Expanded(child: Center(child: Text(day))),
                      ],
                    ),
                  ),
              ],
            ),
            const Divider(),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(24),
                  children: [
                    CalendarWidget(
                      icon: Icons.emoji_events,
                      title: "İlk Gün",
                      subtitle:
                          "İlk Gün Başarımını 2 Ocak 2025 Tarihinde Kazandınız.",
                      onTap: () {
                        context.go("/achievement");
                      },
                    ),
                    const SizedBox(height: 16),
                    CalendarWidget(
                      icon: Icons.currency_lira,
                      title: "100 TL",
                      subtitle: "100 TL Başarımını 4 Ocak 2025 Tarihinde Kazandınız.",
                      onTap: () {
                        context.go("/achievement");
                      },
                    ),
                    const SizedBox(height: 16),
                    CalendarWidget(
                      icon: Icons.emoji_events,
                      title: "10 Gün",
                      subtitle: "10 Gün Başarımını 12 Ocak 2025 Tarihinde Kazandınız.",
                      onTap: () {
                        context.go("/achievement");
                      },
                    ),
                    const SizedBox(height: 16),
                    CalendarWidget(
                      icon: Icons.outlined_flag,
                      title: "3 Kupa",
                      subtitle:
                          "3 Kupa Hedefinizi 12 Ocak 2025 Tarihinde Kazandınız.",
                      onTap: () {
                        context.go("/goals");
                      },
                    ),
                    const SizedBox(height: 16),
                    CalendarWidget(
                      icon: Icons.outlined_flag,
                      title: "5 Gün Hedefinizi 7 Ocak 2025 Tarihinde Kazandınız",
                      subtitle:
                          "5 Gün.",
                      onTap: () {
                        context.go("/goals");
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
