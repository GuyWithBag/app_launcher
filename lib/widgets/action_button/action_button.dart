import 'dart:developer';

import 'package:app_launcher/shared/utils/terminals.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.name, required this.fileUrl});

  final String name;
  final String fileUrl;

  Future<void> runExe() async {
    // Absolute path to your .exe
    try {
      // Run the .exe with optional arguments
      final ProcessResult result =
          await Process.run(fileUrl, ['--arg1', 'value1']);

      // Handle output or errors
      log('Stdout: ${result.stdout}');
      log('Stderr: ${result.stderr}');
      log('Exit code: ${result.exitCode}');
    } catch (e) {
      log('Error running exe: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              // mainTerminalShell.write(C:\\Users\\Administrator\\Desktop\\);
              // mainTerminalShell.write(fileUrl);
              // mainTerminalShell.call();
              runExe();
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
            ),
            child: const Icon(Icons.description),
          ),
          SelectableText.rich(
            TextSpan(text: name),
            style: Theme.of(context).textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
