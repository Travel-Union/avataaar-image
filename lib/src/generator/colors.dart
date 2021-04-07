import '../../avataaar_image.dart';
import '../avataaar.dart';
import '../pieces.dart';

String makeColor(String hex, String maskId) {
  return """
  <g
          id='Color/Palette/Gray-01'
          mask='url(#${maskId})'
          fill-rule='evenodd'
          fill='${hex}'>
          <rect id='pen-Color' x='0' y='0' width='264' height='110' />
        </g>""";
}

String facialHairColor(Avataaar? avataaar, String maskId) {
  return makeColor(facialHairColorHex(avataaar), maskId);
}

String hairColor(Avataaar? avataaar, String maskId) {
  return makeColor(hairColorHex(avataaar), maskId);
}

String hatColor(Avataaar? avataaar, String maskId) {
  return makeColor(hatColorHex(avataaar), maskId);
}

String skinSvg(Avataaar? avataaar, String maskId) {
  return makeColor(skinColorHex(avataaar), maskId);
}

clothColor(Avataaar? avataaar, String maskId) {
  return makeColor(clothColorHex(avataaar), maskId);
}

// App wide Hex

String facialHairColorHex(Avataaar? avataaar) {
  switch (avataaar?.top?.facialHair?.facialHairColor) {
    case FacialHairColor.Auburn:
      return "#A55728";
    case FacialHairColor.Black:
      return "#2C1B18";
    case FacialHairColor.Blonde:
      return "#B58143";
    case FacialHairColor.BlondeGolden:
      return "#D6B370";
    case FacialHairColor.Brown:
      return "#724133";
    case FacialHairColor.BrownDark:
      return "#4A312C";
    case FacialHairColor.Platinum:
      return "#ECDCBF";
    case FacialHairColor.Red:
      return "#C93305";
    case FacialHairColor.PastelPink:
      return "#F59797";
    default:
      return "#A55728";
  }
}

String hairColorHex(Avataaar? avataaar) {
  switch (avataaar?.top?.hairColor) {
    case HairColor.Auburn:
      return "#A55728";
    case HairColor.Black:
      return "#2C1B18";
    case HairColor.Blonde:
      return "#B58143";
    case HairColor.BlondeGolden:
      return "#D6B370";
    case HairColor.Brown:
      return "#724133";
    case HairColor.BrownDark:
      return "#4A312C";
    case HairColor.PastelPink:
      return "#F59797";
    case HairColor.Platinum:
      return "#ECDCBF";
    case HairColor.Red:
      return "#C93305";
    case HairColor.SilverGray:
      return "#E8E1E1";
    default:
      return "#A55728";
  }
}

String hatColorHex(Avataaar? avataaar) {
  switch (avataaar?.top?.hatColor) {
    case HatColor.Black:
      return "#262E33";
    case HatColor.Blue01:
      return "#65C9FF";
    case HatColor.Blue02:
      return "#5199E4";
    case HatColor.Blue03:
      return "#25557C";
    case HatColor.Gray01:
      return "#E6E6E6";
    case HatColor.Gray02:
      return "#929598";
    case HatColor.Heather:
      return "#3C4F5C";
    case HatColor.PastelBlue:
      return "#B1E2FF";
    case HatColor.PastelGreen:
      return "#A7FFC4";
    case HatColor.PastelOrange:
      return "#FFDEB5";
    case HatColor.PastelRed:
      return "#FFAFB9";
    case HatColor.PastelYellow:
      return "#FFFFB1";
    case HatColor.Pink:
      return "#FF488E";
    case HatColor.Red:
      return "#FF5C5C";
    case HatColor.White:
      return "#FFFFFF";
    default:
      return "#65C9FF";
  }
}

String skinColorHex(Avataaar? avataaar) {
  switch (avataaar?.skin?.skinColor) {
    case SkinColor.Tanned:
      return "#FD9841";
    case SkinColor.Yellow:
      return "#F8D25C";
    case SkinColor.Pale:
      return "#FFDBB4";
    case SkinColor.Light:
      return "#EDB98A";
    case SkinColor.Brown:
      return "#D08B5B";
    case SkinColor.DarkBrown:
      return "#AE5D29";
    case SkinColor.Black:
      return "#614335";
    default:
      return "#FD9841";
  }
}

String clothColorHex(Avataaar? avataaar) {
  switch (avataaar?.clothes?.clotheColor) {
    case ClotheColor.Black:
      return "#262E33";
    case ClotheColor.Blue01:
      return "#65C9FF";
    case ClotheColor.Blue02:
      return "#5199E4";
    case ClotheColor.Blue03:
      return "#25557C";
    case ClotheColor.Gray01:
      return "#E6E6E6";
    case ClotheColor.Gray02:
      return "#929598";
    case ClotheColor.Heather:
      return "#3C4F5C";
    case ClotheColor.PastelBlue:
      return "#B1E2FF";
    case ClotheColor.PastelGreen:
      return "#A7FFC4";
    case ClotheColor.PastelOrange:
      return "#FFDEB5";
    case ClotheColor.PastelRed:
      return "#FFAFB9";
    case ClotheColor.PastelYellow:
      return "#FFFFB1";
    case ClotheColor.Pink:
      return "#FF488E";
    case ClotheColor.Red:
      return "#FF5C5C";
    case ClotheColor.White:
      return "#FFFFFF";
    default:
      return "#5199E4";
  }
}
