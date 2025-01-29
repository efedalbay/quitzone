import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../themes/themes.dart';
import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ana Sayfa',
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

      // Ana içerik
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
            // Sağlık Durumu ve Para Bilgileri
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/counter");
                      },
                      child: const Column(
                        children: [
                          Text("İçilmeyen Sigaralar",
                              textAlign: TextAlign.center),
                          SizedBox(height: 4),
                          Icon(Icons.smoke_free),
                          SizedBox(height: 4),
                          Text("3425"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/counter");
                      },
                      child: const Column(
                        children: [
                          Text("Biriktirilen Para",
                              textAlign: TextAlign.center),
                          SizedBox(height: 4),
                          Icon(Icons.currency_lira),
                          SizedBox(height: 4),
                          Text("12697₺"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/health");
                      },
                      child: const Column(
                        children: [
                          Text("Sağlık", textAlign: TextAlign.center),
                          SizedBox(height: 4),
                          Icon(Icons.favorite),
                          SizedBox(height: 4),
                          Text("Sağlık Bilgileri"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/counter");
                      },
                      child: const Column(
                        children: [
                          Text("Kazanılan Zaman", textAlign: TextAlign.center),
                          SizedBox(height: 4),
                          Icon(Icons.timer),
                          SizedBox(height: 4),
                          Text("4 Gün Kazandınız."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/achievement");
                      },
                      child: const Column(
                        children: [
                          Text("Başarılar", textAlign: TextAlign.center),
                          SizedBox(height: 4),
                          Icon(Icons.emoji_events),
                          SizedBox(height: 4),
                          Text("3 Başarımınız Var."),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.go("/goals");
                      },
                      child: const Column(
                        children: [
                          Text("Hedefler", textAlign: TextAlign.center),
                          SizedBox(height: 4),
                          Icon(Icons.outlined_flag),
                          SizedBox(height: 4),
                          Text("2 Hedefinizi Başardınız."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Takvim
            const SizedBox(height: 6),
            // ai
            // TableCalendar(
            //   firstDay: DateTime.utc(2000, 1, 1),
            //   lastDay: DateTime.utc(2100, 12, 31),
            //   focusedDay: DateTime.now(),
            //   calendarFormat: CalendarFormat.month,
            //   headerStyle: const HeaderStyle(
            //     formatButtonVisible: false,
            //     titleCentered: true,
            //   ),
            //   calendarStyle: const CalendarStyle(
            //     todayDecoration: BoxDecoration(
            //       color: Colors.purple,
            //       shape: BoxShape.circle,
            //     ),
            //     selectedDecoration: BoxDecoration(
            //       color: Colors.orange,
            //       shape: BoxShape.circle,
            //     ),
            //   ),
            // ),
            //
            //
            // deneme 1
            //
            //
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     IconButton(
            //       icon: const Icon(Icons.arrow_left),
            //       onPressed: () {},
            //     ),
            //     const Text(
            //       "Ocak 2025",
            //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //     ),
            //     IconButton(
            //       icon: const Icon(Icons.arrow_right),
            //       onPressed: () {},
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 12),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("Pzt"),Text("Sal"),Text("Çrş"),Text("Prş"),
            //     Text("Cum"),Text("Cmt"),Text("Pazar"),
            //   ],
            // ),
            // const SizedBox(height: 12),
            // const Column(
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("29"),Text("30"),Text("31"),Text("1"),
            //         Text("2"),Text("3"),Text("4")
            //       ],
            //     ),
            //     SizedBox(height: 12),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("5"),Text("6"),Text("7"),Text("8"),
            //         Text("9"),Text("10"),Text("11")
            //       ],
            //     ),
            //     SizedBox(height: 12),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("12"),Text("13"),Text("14"),Text("15"),
            //         Text("16"),Text("17"),Text("18")
            //       ],
            //     ),
            //     SizedBox(height: 12),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("19"),Text("20"),Text("21"),Text("22"),
            //         Text("23"),Text("24"),Text("25")
            //       ],
            //     ),
            //     SizedBox(height: 12),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text("26"),Text("27"),Text("28"),Text("29"),
            //         Text("30"),Text("31"),Text("1")
            //       ],
            //     ),
            //   ],
            // ),
            //
            //
            //deneme1 + ai
            //
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_left),
                  onPressed: () {},
                ),
                const Text(
                  "Ocak 2025",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                Expanded(child: Center(child: Text("Pazar"))),
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
            )
          ],
        ),
      ),
      // Alt navigasyon çubuğu
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
