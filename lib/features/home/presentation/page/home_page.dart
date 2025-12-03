import 'package:flutter/material.dart';
import 'package:portfolio/core/localization/app_localzations.dart';
import 'package:portfolio/core/theme/typo_theme.dart';
import 'package:portfolio/features/home/presentation/component/skills_component.dart';
import 'package:portfolio/features/home/presentation/component/work_component.dart';
import 'package:portfolio/features/home/presentation/page/section_keys.dart';
import 'package:portfolio/features/home/presentation/widgets/appbar_widget.dart';
import 'package:provider/provider.dart';

import '../component/about_component.dart';
import '../component/contact_component.dart';
import '../component/experience_component.dart';
import '../component/footer_component.dart';
import '../component/overview_component.dart';
import '../providers/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return ChangeNotifierProvider(
      create: (_) => HomeProvider(),
      child: Builder(
        builder: (context) {
          final provider = context.read<HomeProvider>();
          return Scaffold(
            appBar: AppBar(
              title: TypoTheme.regular16(context, text: l10n.appName),
              actions: [appbarWidget(context, provider: provider)],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    key: SectionKeys.overview,
                    child: OverviewComponent(),
                  ),
                  Container(key: SectionKeys.about, child: AboutComponent()),
                  Container(key: SectionKeys.skills, child: SkillsComponent()),
                  Container(
                    key: SectionKeys.experience,
                    child: ExperienceComponent(),
                  ),
                  Container(key: SectionKeys.work, child: WorkComponent()),
                  Container(
                    key: SectionKeys.contact,
                    child: ContactComponent(),
                  ),
                  FooterComponent(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
