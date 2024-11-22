import 'package:flutter_test/flutter_test.dart';
import 'package:timetracker/app/app.dart';
import 'package:timetracker/timer/timer.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      // expect(find.byType(TimerPage(title: "title")), findsOneWidget);
    });
  });
}
