import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Datepicker App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please select the date:'),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2025, 6),
                  lastDate: DateTime(2030, 2),
                );

                if (datePicked != null) {
                  print(
                    'The date picked is ${datePicked?.year}:${datePicked.month}:${datePicked.day}',
                  );
                }
              },
              child: Text('Choose Date', style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timePicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (timePicked != null) {
                  print(
                    'The selected time is: ${timePicked.hour}:${timePicked.minute}',
                  );
                }
              },
              child: Text('Choose Time'),
            ),
          ],
        ),
      ),
    );
  }
}
