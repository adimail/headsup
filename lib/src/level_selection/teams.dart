// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

const teams = [
  Team(
      number: 1,
      difficulty: 5,
      // TODO: When ready, change these achievement IDs.
      // You configure this in App Store Connect.
      achievementIdIOS: 'first_win',
      // You get this string when you configure an achievement in Play Console.
      achievementIdAndroid: 'NhkIwB69ejkMAOOLDb',
      words: ['example', 'words', 'for', 'team', '1']),
  Team(
      number: 2,
      difficulty: 100,
      achievementIdIOS: 'finished',
      achievementIdAndroid: 'CdfIhE96aspNWLGSQg',
      words: ['example', 'words', 'for', 'team', '2']),
];

class Team {
  final int number;

  final int difficulty;

  /// The list of words associated with the team.
  final List<String> words;

  /// The achievement to unlock when the level is finished, if any.
  final String? achievementIdIOS;

  final String? achievementIdAndroid;

  bool get awardsAchievement => achievementIdAndroid != null;

  const Team({
    required this.number,
    required this.difficulty,
    required this.words,
    this.achievementIdIOS,
    this.achievementIdAndroid,
  }) : assert(
            (achievementIdAndroid != null && achievementIdIOS != null) ||
                (achievementIdAndroid == null && achievementIdIOS == null),
            'Either both iOS and Android achievement ID must be provided, '
            'or none');
}
