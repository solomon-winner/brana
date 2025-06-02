enum OperationType { add, remove }

extension OperationTypeExtension on OperationType {
  String toValue() {
    switch (this) {
      case OperationType.add:
        return "add";
      case OperationType.remove:
        return "remove";
    }
  }

  static OperationType fromValue(String value) {
    switch (value.toLowerCase()) {
      case "add":
        return OperationType.add;
      case "remove":
        return OperationType.remove;
      default:
        throw ArgumentError("Invalid operation type: $value");
    }
  }
}
