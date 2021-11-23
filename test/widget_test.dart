// これは基本的なFlutterウィジェットのテストです。
//
// テストでウィジェットとのインタラクションを行うには、Flutterが提供するWidgetTester
// Flutterが提供するユーティリティを使用します。例えば、タップやスクロールのジェスチャーを送ることができます。
// ジェスチャーを送ることができます。また、WidgetTesterを使用して、ウィジェットツリーで子ウィジェットを見つけることができます。
// ツリーで子ウィジェットを見つけたり、テキストを読んだり、ウィジェットのプロパティの値が正しいかどうかを確認したりすることもできます。

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fluttertutorial/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
