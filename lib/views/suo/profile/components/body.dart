import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/widgets/profile_avatar_name_section.dart';
import 'package:par_mobile/views/suo/profile/components/general_profile_section.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ProfileAvatarNameSection(
              imageUrl: "assets/images/background.png",
              fullname: 'Bambang Wijaya',
              position: 'MOR III - Kramat Jaya',
              onTapEditProfile: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    child: TabBar(
                      controller: _tabController,
                      // give the indicator a decoration (color and border radius)
                      indicatorColor: allColor.primary,
                      labelColor: allColor.primary,
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: 'GENERAL',
                        ),
                        Tab(
                          text: 'DRIVER',
                        ),
                      ],
                    ),
                  ),
                  // tab bar view here
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        // first tab bar view widget
                        GeneralProfileSection(),
                        // second tab bar view widget
                        GeneralProfileSection(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
