import 'package:flutter/material.dart';

mixin CommonException {
  bool isForceLogout = false;
  bool isAccessTokenExpired = false;
  bool isSystemMaintenance = false;
  late DateTimeRange systemMaintenanceTimeRange;

  void onForceLogout() {
    isForceLogout = true;
  }

  void onAccessTokenExpired() {
    isAccessTokenExpired = true;
  }

  void onSystemMaintenance(DateTimeRange timeRange) {
    isSystemMaintenance = true;
    systemMaintenanceTimeRange = timeRange;
  }
}
