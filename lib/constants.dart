import 'package:bmi_calculator/utils.dart';
import 'package:flutter/cupertino.dart';

const kButtonHeight = 80.0;
const kBigMargin = 25.0;
const kSmallMargin = 5.0;
const kIconWidth = 50.0;
const kIconSpacing = 10.0;
const kFontSizeSmall = 18.0;
const kFontSizeLarge = 50.0;
const kMinHeight = 120.0;
const kMaxHeight = 220.0;
const kDefaultHeight = 170.0;

const kCardColor = '#111428';
const kSelectedCardColor = '#1d1f33';
const kInactiveColor = '#8d8e98';
const kSelectedColor = '#ffffff';
const kActiveColor = '#eb1555';

final kTextStyleSmall = TextStyle(
  fontSize: kFontSizeSmall,
  color: HexColor(kInactiveColor),
  fontWeight: FontWeight.bold,
);
final kTextStyleLarge = TextStyle(
  fontSize: kFontSizeLarge,
  color: HexColor(kSelectedColor),
  fontWeight: FontWeight.w900,
);
