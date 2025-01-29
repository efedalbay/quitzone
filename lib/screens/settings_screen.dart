import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../themes/themes.dart';
import '../widgets/bottom_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Ana Sayfa',
          style: Theme.of(context).textTheme.headlineMedium,
        )),
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
            // Drawer Header
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
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.palette,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('Tema'),
            trailing: Switch(
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                context.read<ThemeProvider>().toggleTheme();
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('Bildirimler'),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('Dil'),
            trailing: DropdownButton<String>(
              value: 'TR',
              items: ['TR', 'EN'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          const Divider(),
          ListTile(
            hoverColor: Theme.of(context).colorScheme.onSecondary,
            leading: Icon(
              Icons.info,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('Uygulama Hakkında'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            hoverColor: Theme.of(context).colorScheme.onSecondary,
            leading: Icon(
              Icons.privacy_tip,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: const Text('Gizlilik Politikası'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.red),
            title: const Text(
              'Hesabı Sil',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              context.go("/register");
            },
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
