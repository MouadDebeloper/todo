/// This class is used in the [dashboard_item_widget] screen.
class DashboardItemModel {
  DashboardItemModel({
    this.learnProgramming,
    this.id,
  }) {
    learnProgramming = learnProgramming ?? "Learn programming Language";
    id = id ?? "";
  }

  String? learnProgramming;

  String? id;
}
