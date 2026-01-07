// Copyright (c) 2024 Philip Softworks. All rights reserved.
// Use of this source code is governed by a MIT-style license that can be
// found in the LICENSE file.

import 'dart:ui';

/// Parses a locale string into a [Locale] object.
///
/// The string should be in the format 'language_country' or just 'language'.
Locale parseLocale(String localeString) {
  final List<String> parts = localeString.split('_');
  if (parts.length == 2) {
    return Locale(parts[0], parts[1]);
  }
  return Locale(localeString);
}
