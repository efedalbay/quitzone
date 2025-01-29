import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:quitsmoke/widgets/goals_widget.dart';
import '../themes/themes.dart';
import '../widgets/bottom_menu.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Hedefler',
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
              accountName: Text("Hoşgeldiniz"),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(24),
                  children: [
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "5 Gün",
                      subtitle: "5 gün sigara içmemek",
                      onTap: () {
                        context.go("/counter");
                      },
                    ),
                    const SizedBox(height: 16),
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "3 Kupa",
                      subtitle: "3 adet kupa kazanmak",
                      onTap: () {
                        context.go("/achievement");
                      },
                    ),
                    const SizedBox(height: 16),
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "Ayakkabı",
                      subtitle: "4500 liralık ayakkabıyı almak",
                      onTap: () {
                        context.go("/counter");
                      },
                    ),
                    const SizedBox(height: 16),
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "Kulaklık",
                      subtitle:
                          "HyperX Cloud 3 Wireless almak",
                      onTap: () {
                        context.go("/counter");
                      },
                    ),
                    const SizedBox(height: 16),
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "30 Gün",
                      subtitle:
                          "1 Ayı Tamamlamak",
                      onTap: () {
                        context.go("/counter");
                      },
                    ),
                    const SizedBox(height: 16),
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "Spor",
                      subtitle: "sağlıklı ciğerlerle spora başlamak",
                      onTap: () {
                        context.go("/counter");
                      },
                    ),
                    const SizedBox(height: 16),
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "Tüm Kupalar",
                      subtitle:
                          "kupaları süpürmek",
                      onTap: () {
                        context.go("/counter");
                      },
                    ),
                    const SizedBox(height: 16),
                    GoalsWidget(
                      icon: Icons.outlined_flag,
                      title: "Hedeflerim",
                      subtitle: "tüm hedeflerimi başarmak",
                      onTap: () {
                        context.go("/counter");
                      },
                    ),
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
