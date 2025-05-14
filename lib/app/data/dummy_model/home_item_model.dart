class HomeItemModel {
  String? title;
  String? subtitle;
  String? dalySale;
  String? overdue;

  HomeItemModel({this.title, this.subtitle, this.dalySale, this.overdue});


 static List<HomeItemModel> list = [
    HomeItemModel(title: "Purchase Invoice",subtitle: "Total Unpaid invoices \$0.00",dalySale: "90L",overdue: "90L"),
    HomeItemModel(title: "Sales Invoice",subtitle: "Total Stock",overdue: "",dalySale: ""),
 ];

}