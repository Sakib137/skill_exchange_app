import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "SkillEx App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 77, 109),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search Skills",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Learn and Share Skills",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 46, 9, 9)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  CategoryCard(
                      title: "Web\nDevelopment",
                      color: Colors.blue,
                      icon: Icons.web),
                  CategoryCard(
                      title: "Mobile\nDevelopment",
                      color: Color.fromARGB(255, 219, 101, 240),
                      icon: Icons.phone_android),
                  CategoryCard(
                      title: "Design",
                      color: Colors.orange,
                      icon: Icons.design_services),
                  CategoryCard(
                      title: "Marketing",
                      color: Colors.green,
                      icon: Icons.mark_email_read),
                  CategoryCard(
                      title: "content writing",
                      color: Color.fromARGB(255, 1, 79, 61),
                      icon: Icons.subject),
                  CategoryCard(
                      title: "cyber security",
                      color: Colors.indigo,
                      icon: Icons.security),
                  CategoryCard(
                      title: "trade",
                      color: Colors.purple,
                      icon: Icons.monetization_on),
                  CategoryCard(
                      title: "multimedia",
                      color: Colors.teal,
                      icon: Icons.multitrack_audio),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;

  const CategoryCard(
      {super.key,
      required this.title,
      required this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
