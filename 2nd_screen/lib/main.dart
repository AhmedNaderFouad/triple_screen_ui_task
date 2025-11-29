import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AppointmentsScreen());
  }
}

class AppointmentsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"name": "Ahmed Nader", "time": "10:50", "status": ""},
    {"name": "Abdelrahman", "time": "1:00", "status": ""},
    {"name": "Anas", "time": "6:20", "status": ""},
    {"name": "Mohammed", "time": "9:10", "status": ""},
    {"name": "Ahmed Darwish", "time": "8:40", "status": "x"},
    {"name": "Alaa Elmeligy", "time": "4:00", "status": "done"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text("Appointments", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Sunday, 5 March 2006",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(items[i]["name"]),
                  subtitle: Row(
                    children: [
                      Icon(Icons.lock_clock, size: 16),
                      SizedBox(width: 4),
                      Text(items[i]["time"]),
                    ],
                  ),
                  trailing: items[i]["status"] == "x"
                      ? Icon(Icons.close, color: Colors.red)
                      : items[i]["status"] == "done"
                      ? Icon(Icons.check, color: Colors.blue)
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
