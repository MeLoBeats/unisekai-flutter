import 'package:flutter/material.dart';

class LockedFeatureModel {
  static List<String> featuresName = ['batiment', 'projets'];
}

@immutable
class Feature {
  final String name;
  final bool isLocked;

  const Feature(this.name, this.isLocked);

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) => other is Feature && other.name == name;
}

class ChangeLockedFeatureModel extends ChangeNotifier {
  final List<Feature> _features = LockedFeatureModel.featuresName
      .map((name) => Feature(name, true))
      .toList();

  List<Feature> get features => _features;

  set features(List<Feature> value) {
    _features.clear();
    _features.addAll(value);
    notifyListeners();
  }

  void unlockFeature(String name) {
    final feature = _features.firstWhere((feature) => feature.name == name);
    _features[_features.indexOf(feature)] = Feature(name, false);
    notifyListeners();
  }
}
