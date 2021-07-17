import 'package:club_web/import_file.dart';

class OrganizationHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 411, height: 683)..init(context);
    return Scaffold(
      appBar: PageAppbar(),
      backgroundColor: Color(
        0xff93B5C1,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(20), 0, 0, ScreenUtil().setHeight(10)),
            child: Row(
              children: [
                Text(
                  '資訊工程系學會',
                  style: TextStyle(
                      color: Color(0xff68777C),
                      fontSize: ScreenUtil().setSp(18)),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: MonthPageView(
              color: Color(0xffc3e5f1),
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal, // 水平滑动或者竖直滑动
              option: MonthOption(
                enableContinuous: true, // 单选、连选控制
              ),
              showWeekHead: true, // 显示星期头部
              showMonthHead: true,
              onContinuousSelectListen: (firstDay, endFay) {}, // 连选回调
              onMonthChange: (month) {}, // 月份更改回调
              onDaySelected: (day, data) {}, // 日期选中会迪欧啊
              onCreated: (controller) {},
              monthHeadColor: Color(0xffc3e5f1),
              weekHeadColor: Color(0xffc3e5f1),
            ),
          ),
        ],
      ),
      drawer: PageDrawer(),
    );
  }
}
