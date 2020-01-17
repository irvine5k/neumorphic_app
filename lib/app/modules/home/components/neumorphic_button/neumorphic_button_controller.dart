import 'package:mobx/mobx.dart';

part 'neumorphic_button_controller.g.dart';

class NeumorphicButtonController = _NeumorphicButtonBase
    with _$NeumorphicButtonController;

abstract class _NeumorphicButtonBase with Store {
  @observable
  bool isPressed = false;

  @action
  void onPointDown() {
    isPressed = true;
  }

  @action
  void onPointUp() {
    isPressed = false;
  }
}
