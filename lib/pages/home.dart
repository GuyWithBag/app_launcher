import 'package:app_launcher/shared/utils/terminals.dart';
import 'package:app_launcher/widgets/action_button/action_button.dart';
import 'package:docking/docking.dart';
import 'package:flutter/material.dart';
import 'package:app_launcher/widgets/app_page/app_page.dart';
import 'package:xterm/ui.dart';

// '/'

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return AppPage(
      // alignment: Alignment.topCenter,
      // padding: const EdgeInsets.all(20),
      // isChildSliver: false,
      appBarTitle: 'Hi',
      child: MultiSplitViewTheme(
        data: MultiSplitViewThemeData(dividerThickness: 1),
        child: TabbedViewTheme(
          data: TabbedViewThemeData.classic(),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Docking(
              layout: DockingLayout(
                root: DockingColumn(
                  [
                    _buildItem(1),
                    DockingItem(
                      widget: const Wrap(
                        children: [
                          ActionButton(
                            name: 'Godot',
                            // fileUrl: 'Godot_v4.3-stable_win64.exe',
                            fileUrl:
                                'C:\\Users\\Administrator\\Desktop\\Godot_v4.3-stable_win64.exe',
                          ),
                        ],
                      ),
                    ),
                    DockingItem(
                        widget: TerminalView(mainTerminalShell.terminal))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

DockingItem _buildItem(int value,
    {double? weight, bool closable = true, bool? maximizable}) {
  return DockingItem(
      weight: weight,
      name: value.toString(),
      closable: closable,
      maximizable: maximizable,
      widget: Center(child: Text('$value')));
}
