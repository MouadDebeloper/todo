import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dashboard_item_model.dart';
import 'package:todo/presentation/dashboard_screen/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj?.copyWith(
      dashboardItemList: fillDashboardItemList(),
    )));
  }

  List<DashboardItemModel> fillDashboardItemList() {
    return [
      DashboardItemModel(learnProgramming: "Learn programming Language"),
      DashboardItemModel(learnProgramming: "Cooking Course"),
      DashboardItemModel(learnProgramming: "Pick up the kids"),
      DashboardItemModel(learnProgramming: "Go visit mum by 4pm")
    ];
  }
}
