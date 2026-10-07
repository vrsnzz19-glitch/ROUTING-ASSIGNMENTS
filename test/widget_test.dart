import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sample/main.dart';
import 'package:sample/pages/detail_page.dart';
import 'package:sample/pages/home_page.dart';

void main() {
  testWidgets('shows the Home Page and opens details', (tester) async {
    await tester.pumpWidget(const App());

    expect(find.byType(HomePage), findsOneWidget);
    expect(find.byType(DetailPage), findsNothing);

    await tester.tap(find.text('View Details'));
    await tester.pumpAndSettle();

    expect(find.byType(DetailPage), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);

    await tester.tap(find.text('Go Back'));
    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);
  });
}
