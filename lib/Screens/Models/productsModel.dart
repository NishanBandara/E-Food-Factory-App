class ProductModel {
  final String? Product_name;
  final String? Batch_no;
  final String? EXP;
  final String? Health_Benefit;
  final String? Ingredient;
  final String? MFD;
  final String? AnalysisValues;
  final String? toBeExpireDate;

  ProductModel(
      {required this.Product_name,
      required this.Batch_no,
      required this.EXP,
      required this.Health_Benefit,
      required this.Ingredient,
      required this.MFD,
      required this.AnalysisValues,
      required this.toBeExpireDate});

  Map<String, dynamic> toJson() => {
        'Product Name': Product_name,
        'Batch no': Batch_no,
        'EXP': EXP,
        'Health Benefit': Health_Benefit,
        'Ingredient': Ingredient,
        'MFD': MFD,
        'Analysis Value': AnalysisValues,
        'Number of dates to Expire': toBeExpireDate
      };

  static ProductModel fromJson(Map<String, dynamic> json) => ProductModel(
        Product_name: json["Product Name"],
        Batch_no: json["Batch no"],
        EXP: json["EXP"],
        Health_Benefit: json["Health Benefit"],
        Ingredient: json["Ingredient"],
        MFD: json["MFD"],
        AnalysisValues: json["Analysis Value"],
        toBeExpireDate: json["Number of dates to Expire"],
      );
}
