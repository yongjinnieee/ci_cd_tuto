import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mobile_app_lab_5/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("full app test", (tester) async {
      app.main();
      await tester.pumpAndSettle();

      final phoneField = find.byType(TextField);
      final codeCheckbox = find.byType(Checkbox);
      final getActivationCode = find.byType(ElevatedButton);

      await tester.enterText(phoneField, "123456789");
      await tester.tap(codeCheckbox);
      await tester.pumpAndSettle();

      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      await tester.tap(getActivationCode);
      await tester.pumpAndSettle();

      final otpField = find.byType(TextField);
      final pressActivation = find.byType(ElevatedButton);

      await tester.enterText(otpField, "263454");
      await tester.pumpAndSettle();

      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      await tester.tap(pressActivation);
      await tester.pumpAndSettle();

      // final findFactory2 = find.text('Factory 2');
      // final findFactory1 = find.text('Factory 1');

      // await tester.tap(findFactory2);
      // await tester.pumpAndSettle();
      // await tester.tap(findFactory1);
      // await tester.pumpAndSettle();

      // final findSettingsIcon = find.byIcon(Icons.settings).last;

      // await tester.tap(findSettingsIcon);
      // await tester.pumpAndSettle();
      // await tester.tap(findFactory2);
      // await tester.pumpAndSettle();
      // await tester.tap(findFactory1);
      // await tester.pumpAndSettle();

      // final findPersonIcon = find.byIcon(Icons.person);

      // await tester.tap(findPersonIcon);
      // await tester.pumpAndSettle();

      // final inviteFactory1 = find.text('+');
      // final inviteFactory2 = find.text('+');

      // final fac1Owner = find.byType(TextField).first;
      // final fac2Owner = find.byType(TextField).first;

      // final fac1OwnerNumber = find.byType(TextField).last;
      // final fac2OwnerNumber = find.byType(TextField).last;

      // final pressSubmit = find.byType(ElevatedButton);

      // await tester.tap(inviteFactory1);
      // await tester.pumpAndSettle();

      // await tester.enterText(fac1Owner, "Sarah");
      // await tester.pumpAndSettle();

      // await tester.enterText(fac1OwnerNumber, "139287189");
      // await tester.pumpAndSettle();

      // await tester.testTextInput.receiveAction(TextInputAction.done);
      // await tester.pumpAndSettle();

      // await tester.tap(pressSubmit);
      // await tester.pumpAndSettle();

      // await tester.tap(findFactory2);
      // await tester.pumpAndSettle();

      // await tester.tap(inviteFactory2);
      // await tester.pumpAndSettle();

      // await tester.enterText(fac2Owner, "Sammy");
      // await tester.pumpAndSettle();

      // await tester.enterText(fac2OwnerNumber, "149827194");
      // await tester.pumpAndSettle();

      // await tester.testTextInput.receiveAction(TextInputAction.done);
      // await tester.pumpAndSettle();

      // await tester.tap(pressSubmit);
      // await tester.pumpAndSettle();

      final findFactory2 = find.text('Factory 2');
      final findFactory1 = find.text('Factory 1');

      print('Checking for Factory 2 text...');
      expect(findFactory2, findsOneWidget,
          reason: 'Factory 2 text should be present');

      await tester.tap(findFactory2);
      await tester.pumpAndSettle(Duration(seconds: 2));

      print('Checking for Factory 1 text...');
      expect(findFactory1, findsOneWidget,
          reason: 'Factory 1 text should be present');
      await tester.tap(findFactory1);
      await tester.pumpAndSettle(Duration(seconds: 2));

      final findSettingsIcon = find.byIcon(Icons.settings).last;
      print('Checking for settings icon...');
      expect(findSettingsIcon, findsOneWidget,
          reason: 'Settings icon should be present');

      await tester.tap(findSettingsIcon);
      await tester.pumpAndSettle(Duration(seconds: 2));

      print('Re-checking for Factory 2 text...');
      expect(findFactory2, findsOneWidget,
          reason: 'Factory 2 text should be present again');
      await tester.tap(findFactory2);
      await tester.pumpAndSettle(Duration(seconds: 2));

      print('Re-checking for Factory 1 text...');
      expect(findFactory1, findsOneWidget,
          reason: 'Factory 1 text should be present again');
      await tester.tap(findFactory1);
      await tester.pumpAndSettle(Duration(seconds: 2));

      final findPersonIcon = find.byIcon(Icons.person);
      print('Checking for person icon...');
      expect(findPersonIcon, findsOneWidget,
          reason: 'Person icon should be present');

      await tester.tap(findPersonIcon);
      await tester.pumpAndSettle(Duration(seconds: 2));

      final inviteFactory1 = find.text('+');
      final inviteFactory2 = find.text('+');

      print('Checking for invite buttons...');
      expect(inviteFactory1, findsOneWidget,
          reason: 'Invite button for Factory 1 should be present');
      await tester.tap(inviteFactory1);
      await tester.pumpAndSettle(Duration(seconds: 2));

      final fac1Owner = find.byType(TextField).first;
      final fac1OwnerNumber = find.byType(TextField).first;

      await tester.enterText(fac1Owner, "Sarah");
      await tester.pumpAndSettle(Duration(seconds: 2));

      await tester.enterText(fac1OwnerNumber, "139287189");
      await tester.pumpAndSettle(Duration(seconds: 2));

      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle(Duration(seconds: 2));

      final pressSubmit = find.byType(ElevatedButton);
      print('Checking for submit button...');
      expect(pressSubmit, findsOneWidget,
          reason: 'Submit button should be present');

      await tester.tap(pressSubmit);
      await tester.pumpAndSettle(Duration(seconds: 2));

      print('Re-checking for Factory 2 text post-submit...');
      expect(findFactory2, findsOneWidget,
          reason: 'Factory 2 text should be present after submit');
      await tester.tap(findFactory2);
      await tester.pumpAndSettle(Duration(seconds: 2));

      print('Checking for invite button for Factory 2...');
      expect(inviteFactory2, findsOneWidget,
          reason: 'Invite button for Factory 2 should be present');
      await tester.tap(inviteFactory2);
      await tester.pumpAndSettle(Duration(seconds: 2));

      final fac2Owner = find.byType(TextField).first;
      final fac2OwnerNumber = find.byType(TextField).last;

      await tester.enterText(fac2Owner, "Sammy");
      await tester.pumpAndSettle(Duration(seconds: 2));

      await tester.enterText(fac2OwnerNumber, "149827194");
      await tester.pumpAndSettle(Duration(seconds: 2));

      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle(Duration(seconds: 2));

      await tester.tap(pressSubmit);
      await tester.pumpAndSettle(Duration(seconds: 2));
    });
  });
}
