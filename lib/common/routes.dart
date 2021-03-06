import 'package:flutter/material.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/sample/plant_shop.dart';
import 'package:flutter_demo/sample/timeline_page.dart';
import 'package:flutter_demo/widget/stateful/image_widget.dart';
import 'package:flutter_demo/widget/stateful/pageviewcontrol.dart';
import 'package:flutter_demo/widget/stateful/sliverappbar_widget.dart';
import 'package:flutter_demo/widget/stateless/actionchip_widget.dart';
import 'package:flutter_demo/widget/stateless/button_widget.dart';
import 'package:flutter_demo/widget/stateless/card_widget.dart';
import 'package:flutter_demo/widget/stateless/chip_widget.dart';
import 'package:flutter_demo/widget/stateless/choicechip_widget.dart';
import 'package:flutter_demo/widget/stateless/circleavatar_widget.dart';
import 'package:flutter_demo/widget/stateless/container_widget.dart';
import 'package:flutter_demo/widget/stateless/filterchip.dart';
import 'package:flutter_demo/widget/stateless/gesturedetector_widget.dart';
import 'package:flutter_demo/widget/stateless/gridview_widget.dart';
import 'package:flutter_demo/widget/stateless/inputchip_widget.dart';
import 'package:flutter_demo/widget/stateless/listview_widget.dart';
import 'package:flutter_demo/widget/stateless/pageview_widget.dart';
import 'package:flutter_demo/widget/stateless/singlechildscrollview_widget.dart';
import 'package:flutter_demo/widget/stateless/text_widget.dart';
import 'package:flutter_demo/widget/stateless/theme_widget.dart';
import 'package:flutter_demo/widget/stateless/useraccountdrawerheader_widget.dart';
import 'package:flutter_demo/widget/stateless/visiblity_widget.dart';
import 'package:flutter_demo/widget/stateless/AlertDialogWidget.dart';
import 'package:flutter_demo/widget/stateless/SpacerWidget.dart';
import 'package:flutter_demo/widget/stateless/AboutListTileWidget.dart';
import 'package:flutter_demo/widget/stateless/GridTileWidget.dart';
import 'package:flutter_demo/widget/stateless/RadioListTileWidget.dart';
import 'package:flutter_demo/widget/stateless/SwitchListTile.dart';
import 'package:flutter_demo/widget/stateless/CheckboxListTileWidget.dart';
import 'package:flutter_demo/widget/stateless/ListTileWidget.dart';
import 'package:flutter_demo/widget/stateless/CupertinoWidget.dart';
import 'package:flutter_demo/widget/stateless/DividerWidget.dart';
import 'package:flutter_demo/widget/stateless/IconWidget.dart';
import 'package:flutter_demo/widget/stateless/MyPreferredSizeWidget.dart';
import 'package:flutter_demo/widget/stateful/AnimatedBuilderWidget.dart';
import 'package:flutter_demo/widget/stateful/AnimatedContainerWidget.dart';
import 'package:flutter_demo/widget/stateful/AnimatedEffectWidget.dart';
import 'package:flutter_demo/widget/stateful/AnimatedListWidget.dart';
import 'package:flutter_demo/widget/stateful/AnimatedSwitcherWidget.dart';
import 'package:flutter_demo/widget/stateful/FutureBuilder.dart';
import 'package:flutter_demo/widget/stateful/Hero.dart';
import 'package:flutter_demo/widget/stateful/Material.dart';
import 'package:flutter_demo/widget/stateful/MaterialApp.dart';
import 'package:flutter_demo/widget/stateful/TransitionEffectWidget.dart';
import 'package:flutter_demo/widget/stateful/WillPopScope.dart';
import 'package:flutter_demo/widget/stateful/CheckboxSwitchRadio.dart';
import 'package:flutter_demo/widget/stateful/RangeSlider.dart';
import 'package:flutter_demo/widget/stateful/Slide.dart';
import 'package:flutter_demo/widget/stateful/SnackBar.dart';
import 'package:flutter_demo/widget/stateful/Stepper.dart';
import 'package:flutter_demo/widget/stateful/Overlay.dart';
import 'package:flutter_demo/widget/stateful/RefreshIndicator.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/index': (context) => const Index(),
  // ?????????????????????
  '/container': (context) => const ContainerWidget(),
  '/text': (context) => const TextWidget(),
  '/listview': (context) => const ListViewWidget(),
  '/gridview': (context) => const GridViewWidget(),
  '/singlechildscrollview': (context) => const SingleChildScrollViewWidget(),
  '/pageview': (context) => const PageViewWidget(),
  '/pageviewcontrol': (context) => const PageViewControl(),
  '/circleavatar': (context) => const CircleAvatarWidget(),
  '/chip': (context) => const ChipWidget(),
  '/inputchip': (context) => const InputChipWidget(),
  '/filterchip': (context) => const FilterChipWidget(),
  '/choicechip': (context) => const ChoiceChipWidget(),
  '/actionchip': (context) => const ActionChipWidget(),
  '/theme': (context) => const ThemeWidget(),
  '/gesturedetector': (context) => const GestureDetectorWidget(),
  '/useraccountdrawerheader': (context) =>
      const UserAccountDrawerHeaderWidget(),
  '/button': (context) => const ButtonWidget(),
  '/card': (context) => const CardWidget(),
  '/visiblity': (context) => const VisiblityWidget(),
  // ?????????????????????
  '/image': (context) => const ImageWidget(),
  '/sliverappbar': (context) => const SliverAppBarWidget(),
  // ????????????
  '/plant-shop': (context) => const PlantShop(),
  '/timeline': (context) => const TimelinePage(),
  '/alertDialog': (context) => const AlertDialogWidget(),
  '/SpacerWidefe': (context) => const SpacerWidefe(),
  '/aboutList': (context) => const AboutListTileWidget(),
  '/grid': (context) => const GridTitleWidget(),
  '/radioLIst': (context) => const RadioLIstTitleWidget(),
  '/switchList': (context) => const SwitchListTitleWidget(),
  '/checkboxList': (context) => const CheckboxListTitleWidget(),
  '/listTitle': (context) => const ListTitleWidget(),
  '/cupertino': (context) => const CupertinoWidget(),
  '/divider': (context) => const DividerWidget(),
  '/icon': (context) => const IconWidget(),
  '/preferred': (context) => const MyPreferredSizeWidget(),
  '/animatedContainer': (context) => const AnimatedContainerWidget(),
  '/animatedBuilder': (context) => const AnimatedBuilderWidget(),
  '/animatedEffect': (context) => const AnimatedEffectWidget(),
  '/animatedList': (context) => const AnimatedListWidget(),
  '/animatedSwitcher': (context) => const AnimatedSwitcherWidget(),
  '/futureBuilder': (context) => const FutureBuilderWidget(),
  '/hero': (context) => const HeroWidget(),
  '/material': (context) => const MaterialWidget(),
  '/materialApp': (context) => const MaterialAppWidget(),
  '/transitionEffect': (context) => const TransitionEffectWidget(),
  '/willPopScope': (context) => const WillPopScopeWidget(),
  '/checkboxRadio': (context) => const CheckboxRadioWidget(),
  '/rangeSlider': (context) => const RangeSliderWidget(),
  '/slider': (context) => const SliderWidget(),
  '/snackBar': (context) => const SnackBarWidget(),
  '/stepper': (context) => const StepperWidget(),
  '/overlay': (context) => const OverlayWidget(),
  '/refreshIndicator': (context) => const RefreshIndicatorWidget(),
};
