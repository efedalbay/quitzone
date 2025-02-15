import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          Container(
            width: double.infinity,
            child: Column(
              children: [
                // Logo bölümü
                InkWell(
                  onTap: () => context.go("/register"),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: ()=> context.go("/register"),
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Expanded(
                      child: Center(
                        child: Text("QuıtZone",
                        style: Theme.of(context).textTheme.headlineLarge,),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // yükleme ikonu
                InkWell(
                onTap: () => context.go("/register"),
                child: SizedBox(
                width: 300,
                child: DotLottieLoader.fromAsset(
                  "assets/motions/loader.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
