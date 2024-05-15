import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mobile_app_lab_5/main.dart' as app;

void main(){
  group('App Test',(){
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("full app test",(tester)async{
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

      final findFactory2 = find.text('Factory 2');
      final findFactory1 = find.text('Factory 1');

      await tester.tap(findFactory2);
      await tester.pumpAndSettle();
      await tester.tap(findFactory1);
      await tester.pumpAndSettle();

      final findSettingsIcon = find.byIcon(Icons.settings).last;

      await tester.tap(findSettingsIcon);
      await tester.pumpAndSettle();
      await tester.tap(findFactory2);
      await tester.pumpAndSettle();
      await tester.tap(findFactory1);
      await tester.pumpAndSettle();

      final findPersonIcon = find.byIcon(Icons.person);

      await tester.tap(findPersonIcon);
      await tester.pumpAndSettle();

      final inviteFactory1 = find.text('+');
      final inviteFactory2 = find.text('+');

      final fac1Owner = find.byType(TextField).first;
      final fac2Owner = find.byType(TextField).first;

      final fac1OwnerNumber = find.byType(TextField).last;
      final fac2OwnerNumber = find.byType(TextField).last;

      final pressSubmit = find.byType(ElevatedButton);

      await tester.tap(inviteFactory1);
      await tester.pumpAndSettle();
      
      await tester.enterText(fac1Owner, "Sarah");
      await tester.pumpAndSettle();

      await tester.enterText(fac1OwnerNumber, "139287189");
      await tester.pumpAndSettle();

      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      await tester.tap(pressSubmit);
      await tester.pumpAndSettle();

      await tester.tap(findFactory2);
      await tester.pumpAndSettle();
      
      await tester.tap(inviteFactory2);
      await tester.pumpAndSettle();
      
      await tester.enterText(fac2Owner, "Sammy");
      await tester.pumpAndSettle();

      await tester.enterText(fac2OwnerNumber, "149827194");
      await tester.pumpAndSettle();

      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      await tester.tap(pressSubmit);
      await tester.pumpAndSettle();

    });
  });
}