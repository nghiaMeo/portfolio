import 'package:portfolio/core/theme/typo_theme.dart';
import "package:web/web.dart" as web;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buttonSocialWidget(BuildContext context, Widget widget, String url) {
  return InkWell(
    onTap: () async {
      if (kIsWeb) {
        web.window.open(url, '_blank');
      } else {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: TypoTheme.regular16(
                context,
                text: "can't open this $url",
              ),
            ),
          );
        }
      }
    },
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    child: widget,
  );
}
