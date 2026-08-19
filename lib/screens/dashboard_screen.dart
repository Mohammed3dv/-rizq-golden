import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String,dynamic>> items = [
    {"title":"توليد صور","icon":Icons.image,"color":Color(0xFF0E9F6E)},
    {"title":"توليد كتاب","icon":Icons.book,"color":Color(0xFF0A84FF)},
    {"title":"قوالب ربحية","icon":Icons.layers,"color":Color(0xFFFF9500)},
    {"title":"فيديو","icon":Icons.video_library,"color":Color(0xFFFF3B30)},
    {"title":"صوتيات","icon":Icons.audiotrack,"color":Color(0xFFAF52DE)},
    {"title":"ألعاب","icon":Icons.games,"color":Color(0xFF5856D6)},
    {"title":"بوصلة الربح","icon":Icons.compass_calibration,"color":Color(0xFF00C7BE)},
    {"title":"الإعدادات","icon":Icons.settings,"color":Color(0xFF8E8E93)},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('رِزْق الذهبي 10.0 - 12 مجال'), backgroundColor: Color(0xFF0E9F6E)),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
        itemCount: items.length,
        itemBuilder: (c,i) => Card(
          color: Color(0xFF1A1F2E),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(items[i]['icon'], size: 48, color: items[i]['color']),
            SizedBox(height: 8),
            Text(items[i]['title'], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
          ]),
        ),
      ),
    );
  }
}
