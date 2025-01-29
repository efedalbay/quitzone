import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../themes/themes.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/trophy_widget.dart';

class AchievementScreen extends StatelessWidget {
  const AchievementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Başarılar',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon,
            color: Theme.of(context).colorScheme.surface,),
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
                backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
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
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Ana Sayfa'),
              onTap: () {
                context.go("/home");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Profil'),
              onTap: () {
                context.go("/profile");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_month,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Takvim'),
              onTap: () {
                context.go("/calendar");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.smoke_free,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Sayaçlar'),
              onTap: () {
                context.go("/counter");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.outlined_flag,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Hedefler'),
              onTap: () {
                context.go("/goals");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_events,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Başarımlar'),
              onTap: () {
                context.go("/achievement");
              },
            ),
            const Spacer(),
            const Divider(),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.primary,
              ),
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
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(24),
                  children: [
                    TrophyWidget(
                      icon: Icons.emoji_events,
                      title: "İlk Gün",
                      subtitle: "Tebrikler! İlk Günü Tamamladın.",
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    TrophyWidget(
                      icon: Icons.currency_lira,
                      title: "100 TL",
                      subtitle: "Tebrikler! 100 Lira Biriktirdin.",
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    TrophyWidget(
                      icon: Icons.emoji_events,
                      title: "10 Gün",
                      subtitle: "Tebrikler! 10 Gündür Sigarayı QuitZoneladın.",
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    TrophyWidget(
                      icon: Icons.currency_lira,
                      title: "1000TL",
                      subtitle:
                          "Tebrikler! 1000TL Hedeflerine Hızla İlerliyorsun.",
                      onTap: () {
                        context.go("/goals");
                      },
                    ),
                    const SizedBox(height: 16),
                    TrophyWidget(
                      icon: Icons.emoji_events,
                      title: "30 Gün",
                      subtitle:
                          "Tebrikler! 1 Ay Oldu Bile Bırakmayı Sakın Düşünme.",
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    TrophyWidget(
                      icon: Icons.currency_lira,
                      title: "2500 TL",
                      subtitle: "Tebrikler! 2500 TL, Kaç Hedefine Ulaştın?",
                      onTap: () {
                        context.go("/goals");
                      },
                    ),
                    const SizedBox(height: 16),
                    TrophyWidget(
                      icon: Icons.emoji_events,
                      title: "45 Gün",
                      subtitle:
                          "Tebrikler! 45 Gün, Kendini Nasıl Hissediyorsun.",
                      onTap: () {},
                    ),
                    const SizedBox(height: 16),
                    TrophyWidget(
                      icon: Icons.currency_lira,
                      title: "5000 TL",
                      subtitle: "Tebrikler! 5000 Tl,Yeni Ayakkabı? Yeni Ceket?",
                      onTap: () {
                        context.go("/goals");
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
