import 'package:avataaar_image/src/converter.dart';
import 'package:avataaar_image/src/parts/parts.dart';
import 'package:avataaar_image/src/pieces.dart';

class FacialHair implements AvataaarPart {
  FacialHair._({this.facialHairType, this.facialHairColor});

  final FacialHairType? facialHairType;
  final FacialHairColor? facialHairColor;

  @override
  List get pieces => [facialHairType, facialHairColor];

  static FacialHair get blank =>
      FacialHair._(facialHairType: FacialHairType.Blank);

  static FacialHair beardMedium({FacialHairColor? facialHairColor}) =>
      FacialHair._(
          facialHairType: FacialHairType.BeardMedium,
          facialHairColor: facialHairColor);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FacialHair &&
          runtimeType == other.runtimeType &&
          facialHairType == other.facialHairType &&
          facialHairColor == other.facialHairColor;

  @override
  int get hashCode => facialHairType.hashCode ^ facialHairColor.hashCode;

  static FacialHair beardLight({FacialHairColor? facialHairColor}) =>
      FacialHair._(
          facialHairType: FacialHairType.BeardLight,
          facialHairColor: facialHairColor);

  static FacialHair beardMagestic({FacialHairColor? facialHairColor}) =>
      FacialHair._(
          facialHairType: FacialHairType.BeardMagestic,
          facialHairColor: facialHairColor);

  static FacialHair moustacheFancy({FacialHairColor? facialHairColor}) =>
      FacialHair._(
          facialHairType: FacialHairType.MoustacheFancy,
          facialHairColor: facialHairColor);

  static FacialHair moustacheMagnum({FacialHairColor? facialHairColor}) =>
      FacialHair._(
          facialHairType: FacialHairType.MoustacheMagnum,
          facialHairColor: facialHairColor);

  static FacialHair? get random {
    final facialHairType = randomPiece(FacialHairType.values);
    final facialHairColor = randomPiece(FacialHairColor.values);
    switch (facialHairType) {
      case FacialHairType.Blank:
        return blank;
      case FacialHairType.BeardMedium:
        return beardMedium(facialHairColor: facialHairColor);
      case FacialHairType.BeardLight:
        return beardLight(facialHairColor: facialHairColor);
      case FacialHairType.BeardMagestic:
        return beardMagestic(facialHairColor: facialHairColor);
      case FacialHairType.MoustacheFancy:
        return moustacheFancy(facialHairColor: facialHairColor);
      case FacialHairType.MoustacheMagnum:
        return moustacheMagnum(facialHairColor: facialHairColor);
      default:
        return null;
    }
  }

  FacialHair? copyWith({FacialHairColor? facialHairColor}) {
    switch (this.facialHairType) {
      case FacialHairType.BeardLight:
        return FacialHair.beardLight(
            facialHairColor: facialHairColor ?? this.facialHairColor);
      case FacialHairType.BeardMagestic:
        return FacialHair.beardMagestic(
            facialHairColor: facialHairColor ?? this.facialHairColor);
      case FacialHairType.BeardMedium:
        return FacialHair.beardMedium(
            facialHairColor: facialHairColor ?? this.facialHairColor);
      case FacialHairType.MoustacheFancy:
        return FacialHair.moustacheFancy(
            facialHairColor: facialHairColor ?? this.facialHairColor);
      case FacialHairType.MoustacheMagnum:
        return FacialHair.moustacheMagnum(
            facialHairColor: facialHairColor ?? this.facialHairColor);
      case FacialHairType.Blank:
        return FacialHair.blank;
      default:
        return null;
    }
  }
}

class FacialHairConverter extends Converter<FacialHair?> {
  @override
  FacialHair? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return FacialHair._(
      facialHairType:
          enumFromJson(FacialHairType.values, map['facialHairType']),
      facialHairColor:
          enumFromJson(FacialHairColor.values, map['facialHairColor']),
    );
  }

  @override
  Map<String, dynamic>? toMap(FacialHair? value) {
    if (value == null) return null;
    return {
      'facialHairType': enumToJson(value.facialHairType),
      'facialHairColor': enumToJson(value.facialHairColor),
    };
  }
}
