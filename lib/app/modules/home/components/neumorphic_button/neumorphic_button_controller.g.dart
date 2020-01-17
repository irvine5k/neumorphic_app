// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neumorphic_button_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NeumorphicButtonController on _NeumorphicButtonBase, Store {
  final _$isPressedAtom = Atom(name: '_NeumorphicButtonBase.isPressed');

  @override
  bool get isPressed {
    _$isPressedAtom.context.enforceReadPolicy(_$isPressedAtom);
    _$isPressedAtom.reportObserved();
    return super.isPressed;
  }

  @override
  set isPressed(bool value) {
    _$isPressedAtom.context.conditionallyRunInAction(() {
      super.isPressed = value;
      _$isPressedAtom.reportChanged();
    }, _$isPressedAtom, name: '${_$isPressedAtom.name}_set');
  }

  final _$_NeumorphicButtonBaseActionController =
      ActionController(name: '_NeumorphicButtonBase');

  @override
  void onPointDown() {
    final _$actionInfo = _$_NeumorphicButtonBaseActionController.startAction();
    try {
      return super.onPointDown();
    } finally {
      _$_NeumorphicButtonBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPointUp() {
    final _$actionInfo = _$_NeumorphicButtonBaseActionController.startAction();
    try {
      return super.onPointUp();
    } finally {
      _$_NeumorphicButtonBaseActionController.endAction(_$actionInfo);
    }
  }
}
