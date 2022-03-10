import 'package:url_launcher/url_launcher.dart';

class CallCenter {
  launchDial({required String uriPhone}) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: "081220559855",
    );
    await launch(launchUri.toString());
  }
}
