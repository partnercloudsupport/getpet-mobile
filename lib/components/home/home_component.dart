import 'package:flutter/material.dart';
import 'package:getpet/components/onboarding/onboarding_component.dart';
import 'package:getpet/components/pet_favorites/favorites_component.dart';
import 'package:getpet/components/swipe/pet_swipe_component.dart';
import 'package:getpet/components/user_profile/user_login_component.dart';
import 'package:getpet/preferences/app_preferences.dart';

class HomeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_circle)),
              Tab(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/ic_home.png",
                    color: Colors.white70,
                  ),
                ),
              ),
              Tab(icon: Icon(Icons.favorite)),
            ],
          ),
          title: Text("GetPet"),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            UserLoginComponent(),
            PetSwipeComponent(),
            FavoritePetsComponent(),
          ],
        ),
      ),
    );

    Future.delayed(const Duration(milliseconds: 500), () async {
      final isOnboardingPassed = await AppPreferences().isOnboardingPassed();

      if (!isOnboardingPassed) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => OnboardingComponent()),
        );
      }
    });

    return controller;
  }
}
