import 'package:get/get.dart';
import 'package:hbb/src/ui/view/statistics&report.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatisticsAndReportsController extends GetxController{

   late List<ChartData> data;
  late TooltipBehavior tooltip;
  
  late List<SignUpData> signUp;
  late List<ExposureData> exposure;

 
 
  @override
  void onInit() {
        data = [
      ChartData('Jan', 80,20),
      ChartData('Feb', 15,33),
      ChartData('Mar', 30,26),
      ChartData('Apr', 6.4,17.5),
      ChartData('May', 14,5),
      ChartData('Jun', 10,26),

    ];
    signUp=[
      SignUpData('90',20)
    ];
     exposure=[
      ExposureData('90',85)
    ];
    // print(data[0]);
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }
}