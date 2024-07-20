import 'package:flutter/material.dart';
import 'package:tuldokator/tuldokator.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  ExampleAppState createState() => ExampleAppState();
}

class ExampleAppState extends State<ExampleApp> {
  final TuldokatorController _controller = TuldokatorController(initialValue: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tuldokator Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Example PageView'),
              Expanded(
                child: PageView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        'Page ${index + 1}',
                        style: const TextStyle(fontSize: 24),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text('Tuldokator Indicator'),
              Tuldokator(
                itemCount: 5,
                controller: _controller,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Example of programmatically changing the selected dot index
                  _controller.toIndex(3);
                },
                child: const Text('Go to Page 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
