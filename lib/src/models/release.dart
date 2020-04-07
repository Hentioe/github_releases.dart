import 'package:github_releases/src/models/release_asset.dart';

import '../models.dart';

part 'release.g.dart';

class Release {
  String url;
  String htmlUrl;
  String assetsUrl;
  String uploadUrl;
  String tarballUrl;
  String zipballUrl;
  int id;
  String nodeId;
  String tagName;
  String targetCommitish;
  String name;
  String body;
  bool isDraft;
  bool isPrerelease;
  DateTime createdAt;
  DateTime publishedAt;
  User author;
  List<ReleaseAsset> assets;

  Release({
    this.url,
    this.htmlUrl,
    this.assetsUrl,
    this.uploadUrl,
    this.tarballUrl,
    this.zipballUrl,
    this.id,
    this.nodeId,
    this.tagName,
    this.targetCommitish,
    this.name,
    this.body,
    this.isDraft,
    this.isPrerelease,
    this.createdAt,
    this.publishedAt,
    this.author,
    this.assets,
  });

  factory Release.fromJson(Map<String, dynamic> json) =>
      _$ReleaseFromJson(json);
}
