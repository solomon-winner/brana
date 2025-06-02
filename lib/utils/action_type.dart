enum ActionType { add, remove }

extension ActionTypeExtension on ActionType {
  String get name {
    switch (this) {
      case ActionType.add:
        return 'add';
      case ActionType.remove:
        return 'remove';
    }
  }
}
