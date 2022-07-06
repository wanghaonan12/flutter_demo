import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/custom/widget_container.dart';

final data = <dynamic>[
  Colors.blue[50],
  Colors.blue[100],
  Colors.blue[200],
  Colors.blue[300],
  Colors.blue[400],
  Colors.blue[500],
  Colors.blue[600],
  Colors.blue[700],
  Colors.blue[800],
  Colors.blue[900],
];

String colorString(dynamic color) =>
    "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

final statelessList = <ContainerInfo>[
  ContainerInfo('Container', '用于容纳单个子组件的容器组件。集成了若干个单子组件的功能,如内外边距、形变、装饰、约束等。',
      '/container'),
  ContainerInfo(
      'Text', '用于容纳单个子组件的容器组件,拥有的属性非常多,足够满足适应需求,核心样式由style属性控制。', '/text'),
  ContainerInfo(
      'ListView',
      '可容纳多个子组件,可以通过builder、separated、custom等构造。有内边距、是否反向、滑动控制器等属性。',
      '/listview'),
  ContainerInfo(
      'GridView',
      '以网格的形式容纳多个组件,可以通过count、extent、custom、builder等构造,有内边距、是否反向、滑动控制等属性。',
      '/gridview'),
  ContainerInfo('SingleChildScrollView', '使一个组件具有滑动的效果,可指定滑动的方向、是否反向、滑动控制器等属性。',
      '/singlechildscrollview'),
  ContainerInfo(
      'PageView', '容纳多个组件的页面,可对它们进行滑动切换,指定滑动方向、是否反向、滑动控制器等属性。', '/pageview'),
  ContainerInfo(
      'CircleAvatar', '可将一张图片变成圆形,中间可以放置一个组件。可指定半径、前景色、背景色等。', '/circleavatar'),
  ContainerInfo('Chip', '一个横向的圆边小条,可以包含左中右三个组件。可以指定颜色、阴影色和点击事件。', '/chip'),
  ContainerInfo('InputChip', '和Chip组件类似,集成了点击、删除、选择事件为一体,注意：点击事件和选择事件不能同时存在。',
      '/inputchip'),
  ContainerInfo('FilterChip', '和Chip组件类似,具有选中与否的属性和选中事件,当选中时左侧组件上层会被 √ 遮罩',
      '/filterchip'),
  ContainerInfo(
      'ChoiceChip', '和Chip组件类似,有一些选择的属性,可以指定选中时的颜色,阴影色和选择事件。', '/choicechip'),
  ContainerInfo(
      'ActionChip', '和Chip组件类似,有一些点击的熟悉,可以指定点击时的阴影深浅、点击事件。', '/actionchip'),
  ContainerInfo(
      'Theme', '可通过Theme.of获取ThemeData对象,也可以指定主题应用于Theme的后代组件', '/theme'),
  ContainerInfo('GestureDetector', '组件手势事件的检测器,可接受长按、双击、按下、松开、移动等事件,并可获取触点信息',
      '/gesturedetector'),
  ContainerInfo(
      'UserAccountDrawerHeader',
      'Flutter提供的一个通用展示结构,相应位置可插入组件,很方便地对特定条目,常用于Drawer中',
      '/useraccountdrawerheader'),
  ContainerInfo('ButtonWidget', '各类Button组件', '/button'),
  ContainerInfo('CardWidget', '卡片组件,基于Material组件实现,用于将单个组件卡片化。', '/card'),
  ContainerInfo(
      'VisiblityWidget', '显隐组件,控制一个组件显示或隐藏,可设置隐藏后的占位组件。', '/visiblity'),
  ContainerInfo('AlertDialog', '一个通用对话框结构，指定头，中，为出的组件拥有标题，内容的文字样式和编剧，影深，形状等属性',
      '/alertDialog'),
  ContainerInfo(
      'SpacerWidefe',
      'Spacer的通过Expanded的实现的，和Expanded的区别是：Expanded可以设置子控件，而Spacer的子控件尺寸是0，因此Spacer适用于撑开Row、Column、Flex的子控件的空隙',
      '/SpacerWidefe'),
  ContainerInfo(
      'aboutList',
      '刷新，控件并没有更新，AboutListTile控件是有点击属性的，点击弹出AboutDialog控件，这些属性出现在AboutDialog控件上，关于AboutDialog的详细内容请查看AboutDialog控件',
      '/aboutList'),
  ContainerInfo(
      'grid', 'GridTile适合做带有页眉页脚的页面样式，但有一点child 顶部和底部会被页眉页脚覆盖，', '/grid'),
  ContainerInfo(
      'radioLIst',
      '通常情况下，需要在Radio控件的后面添加说明，用户需要知道自己选择的是什么，当然我们可以直接在Radio后面添加Text控件',
      '/radioLIst'),
  ContainerInfo('switchList', 'Switch为material风格的开关组件', '/switchList'),
  ContainerInfo('checkboxList', 'Checkbox是勾选框控件，本身不包含任何状态，改变状态需要通过改变value的值改变',
      '/checkboxList'),
  ContainerInfo(
      'listTitle',
      'ListTile是遵循Material Design 规范且固定高度的组件，让开发者快速的构建精美的布局，通常用于ListView的子控件，当然也可以单独使用',
      '/listTitle'),
  ContainerInfo('CupertinoWidget', 'Ios风格通用弹出框', '/cupertino'),
  ContainerInfo(
      'DividerWidget', '分割线，可以指定颜色，高度，宽度，左右边距等信息，用于列表的item分割线', '/divider'),
  ContainerInfo('IconWidget', '各类图表组件', '/icon'),
  ContainerInfo('MyPreferredSizeWidget',
      '优先尺寸组件，可以容纳一个组件，设置有下尺寸，不会对其他的组件施加任何约束。', '/preferred'),
];

final statefulList = <ContainerInfo>[
  ContainerInfo(
      'Image', '用于显示一张图片,可以从文件、内存、网络、资源里加载,可以指定适应方式、样式、颜色混合模式、重复模式。', '/image'),
  ContainerInfo(
      '动画容器', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/animatedContainer'),
  ContainerInfo(
      '动画构造器', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/animatedBuilder'),
  ContainerInfo(
      '动画改变外观属性', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/animatedEffect'),
  ContainerInfo(
      '动画列表', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/animatedList'),
  ContainerInfo(
      '其他动画效果', 'SliverAppBar组件可以实现页面头部区域展开、折叠的效果。', '/animatedSwitcher'),
];
