import 'package:flutter/material.dart';
import 'package:flutter_auth_supabase/auth/auth_gate.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // supabase setup
  await Supabase.initialize(
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind4cGVyaXVldXFsbWVxempjc2dpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE0OTk3MzUsImV4cCI6MjA0NzA3NTczNX0.BDEzcu3vIyFmu3gxmFwj8W6S0ZPd6CcXXyz-55NmYKI",
    url: "https://wxperiueuqlmeqzjcsgi.supabase.co",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthGate(),
    );
  }
}
