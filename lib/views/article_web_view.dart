import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatefulWidget {
  const ArticleWebView({super.key, required this.articleUrl});
  final String articleUrl;

  @override
  State<ArticleWebView> createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {
  late final WebViewController controller;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.articleUrl));
    navigationState();
  }

  void navigationState() {
    controller.setNavigationDelegate(
      NavigationDelegate(
        onPageStarted: (url) => setState(() {
          isLoading = true;
        }),
        onPageFinished: (url) => setState(() {
          isLoading = false;
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: isLoading
            ? const Center(child: CircularProgressIndicator(color: Colors.blue))
            : WebViewWidget(controller: controller),
      ),
    );
  }
}
