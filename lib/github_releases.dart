import 'dart:async';

import 'package:dio/dio.dart';

import 'src/models.dart';

Future<List<Release>> getReleases(String owner, String repo) async {
  var api_url = 'https://api.github.com/repos/$owner/$repo/releases';

  var resp = await Dio().get(api_url);

  Iterable data = resp.data;

  return data.map((json) => Release.fromJson(json)).toList();
}
