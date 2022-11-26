class E_numberModel {
  // final int? id;
  final String? eNumber;
  final String? eName;
  final String? example;
  final String? description;

  E_numberModel(
      {
      // required this.id,
      required this.eNumber,
      required this.eName,
      required this.example,
      required this.description});

  Map<String, dynamic> toJson() => {
        'eNumber': eNumber,
        'eName': eName,
        'Example': example,
        'Description': description,
      };

  static E_numberModel fromJson(Map<String, dynamic> json) => E_numberModel(
        eNumber: json["eNumber"],
        eName: json["eName"],
        example: json["Example"],
        description: json["Description"],
      );
}
