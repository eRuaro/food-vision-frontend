class FoodVisionPrediction {
  const FoodVisionPrediction(
      {required this.classPrediction, required this.confidenceScore});

  final String classPrediction;
  final String confidenceScore;

  factory FoodVisionPrediction.fromJson(Map<String, dynamic> data) {
    final classPrediction = data["model-prediction"];
    final confidenceScore =
        data["model-prediction-confidence-score"];

    return FoodVisionPrediction(
      classPrediction: classPrediction.toString(),
      confidenceScore: confidenceScore.toString(),
    );
  }
}
