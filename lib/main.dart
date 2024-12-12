import 'package:flutter/material.dart';
import 'package:app_launcher/app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const App());
}

// import 'package:docking/docking.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const DockingExampleApp());
// }

// class DockingExampleApp extends StatelessWidget {
//   const DockingExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Docking example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const DockingExamplePage(),
//     );
//   }
// }

// class DockingExamplePage extends StatefulWidget {
//   const DockingExamplePage({super.key});

//   @override
//   DockingExamplePageState createState() => DockingExamplePageState();
// }

// class DockingExamplePageState extends State<DockingExamplePage> {
//   late DockingLayout _layout;

//   @override
//   void initState() {
//     super.initState();
//     int v = 1;
//     _layout = DockingLayout(
//         root: DockingRow([
//       _buildItem(v++, weight: .2),
//       DockingColumn([
//         DockingRow([_nonMaximizableItem, _nonClosableItem, _minimalSizeItem]),
//         DockingTabs([_buildItem(v++), _buildItem(v++)]),
//         _minimalWeightItem
//       ])
//     ]));
//   }

//   DockingItem get _minimalWeightItem => DockingItem(
//       name: 'minimalSize',
//       minimalWeight: .15,
//       widget: const CenterText(text: 'minimalWeight: .15'));

//   DockingItem get _minimalSizeItem => DockingItem(
//       name: 'minimalSize',
//       minimalSize: 150,
//       widget: const CenterText(text: 'minimalSize: 150'));

//   DockingItem get _nonMaximizableItem => DockingItem(
//       name: 'non-maximizable',
//       maximizable: false,
//       widget: const CenterText(text: 'non-maximizable'));

//   DockingItem get _nonClosableItem => DockingItem(
//       name: 'non-closable',
//       closable: false,
//       widget: const CenterText(text: 'non-closable'));

//   DockingItem _buildItem(int value,
//       {double? weight, bool closable = true, bool? maximizable}) {
//     return DockingItem(
//         weight: weight,
//         name: value.toString(),
//         closable: closable,
//         maximizable: maximizable,
//         widget: Center(child: Text('$value')));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: TabbedViewTheme(
//             data: TabbedViewThemeData.classic(colorSet: Colors.amber),
//             child: Container(
//                 padding: const EdgeInsets.all(16),
//                 child: Docking(layout: _layout))));
//   }
// }

// class CenterText extends StatelessWidget {
//   const CenterText({super.key, required this.text});

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text(text, overflow: TextOverflow.ellipsis));
//   }
// }

// TabbedViewThemeData(
//               contentArea: ContentAreaThemeData(
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(
//                       'assets/stock_images/universe.png',
//                     ),
//                   ),
//                 ),
//               ),
//             ),