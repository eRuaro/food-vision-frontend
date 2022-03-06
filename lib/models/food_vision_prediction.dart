class FoodVisionPrediction {
  const FoodVisionPrediction(
      {required this.classPrediction, required this.confidenceScore});

  final String classPrediction;
  final String confidenceScore;

  factory FoodVisionPrediction.fromJson(Map<String, dynamic> data) {
    final String classPrediction = data["model-prediction"] as String;
    final String confidenceScore =
        data["model-prediction-confidence-score"] as String;

    return FoodVisionPrediction(
      classPrediction: classPrediction,
      confidenceScore: confidenceScore,
    );
  }
}
