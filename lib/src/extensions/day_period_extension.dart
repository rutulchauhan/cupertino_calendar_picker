// Copyright (c) 2024 Philip Softworks. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'package:cupertino_calendar_picker/src/src.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DayPeriodExtension on DayPeriod {
  String localizedString(BuildContext context, {String? locale}) {
    if (locale != null) {
      final String timeString = switch (this) {
        DayPeriod.am =>
          DateFormat('a', locale).format(DateTime(2024, 1, 1, 10)),
        DayPeriod.pm =>
          DateFormat('a', locale).format(DateTime(2024, 1, 1, 22)),
      };
      return timeString;
    }

    return switch (this) {
      DayPeriod.am => context.cupertinoLocalization.anteMeridiemAbbreviation,
      DayPeriod.pm => context.cupertinoLocalization.postMeridiemAbbreviation,
    };
  }
}
