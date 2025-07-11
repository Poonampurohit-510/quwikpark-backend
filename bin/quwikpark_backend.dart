// bin/quwikpark_backend.dart
import 'dart:io';
import 'package:alfred/alfred.dart';

void main() async {
  final app = Alfred();

  app.get('/', (req, res) {
    res.json({'message': 'Welcome to the QuwikPark API!'});
  });

  app.get('/locations', (req, res) {
    final locations = [
      {'name': 'PVP Square (from backend)', 'total': 60, 'available': 45, 'feePerHour': 40.0},
      {'name': 'Trendset Mall (from backend)', 'total': 50, 'available': 22, 'feePerHour': 35.0},
      {'name': 'LEPL Icon Mall (from backend)', 'total': 70, 'available': 55, 'feePerHour': 45.0},
    ];
    res.json(locations);
  });

  final port = int.parse(Platform.environment['PORT'] ?? '3000');
  await app.listen(port);
  
  print('✅ Server is running on http://localhost:$port');
}