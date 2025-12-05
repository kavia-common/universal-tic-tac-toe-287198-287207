import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_app/main.dart';

void main() {
  testWidgets('App renders Tic Tac Toe title and controls', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // AppBar title
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Header shows Ocean Professional label
    expect(find.text('Ocean Professional'), findsOneWidget);

    // Controls buttons
    expect(find.byIcon(Icons.refresh_rounded), findsOneWidget);
    expect(find.byIcon(Icons.new_releases_outlined), findsOneWidget);
  });

  testWidgets('Board has 9 tappable cells', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());
    // There are 9 InkWell tap targets (cells)
    expect(find.byType(InkWell), findsNWidgets(9));
  });
}
