import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';

Future<void> customUrlLauncher(BuildContext context, String? url) async {
  if (url != null) {
    final Uri parsedUrl = Uri.parse(url);
    if (await canLaunchUrl(parsedUrl)) {
      await launchUrl(parsedUrl);
    } else {
      if (context.mounted) {
        customSnackBar(context, 'Cannot launch $url');
      }
    }
  }
}


