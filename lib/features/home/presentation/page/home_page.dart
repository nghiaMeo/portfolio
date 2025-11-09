import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/typo_theme.dart';
import 'package:portfolio/features/home/presentation/component/skills_component.dart';
import 'package:portfolio/features/home/presentation/component/work_component.dart';
import 'package:portfolio/features/home/presentation/widgets/appbar_widget.dart';

import '../component/about_component.dart';
import '../component/contact_component.dart';
import '../component/experience_component.dart';
import '../component/overview_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TypoTheme.regular16(context, text: "Jimmy Nguyen"),
        actions: [appbarWidget(context)],
      ),
      body: ListView(
        children: [
          OverviewComponent(),
          AboutComponent(),
          SkillsComponent(),
          ExperienceComponent(),
          WorkComponent(),
          ContactComponent(),
        ],
      ),
    );
  }
}
