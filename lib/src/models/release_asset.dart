import '../models.dart';

part 'release_asset.g.dart';

class ReleaseAsset {
  String url;
  String browserDownloadUrl;
  int id;
  String nodeId;
  String name;
  String label;
  String state;
  String contentType;
  int size;
  int downloadCount;
  DateTime createdAt;
  DateTime updatedAt;
  User uploader;

  ReleaseAsset({
    this.url,
    this.browserDownloadUrl,
    this.id,
    this.nodeId,
    this.name,
    this.label,
    this.state,
    this.contentType,
    this.size,
    this.downloadCount,
    this.createdAt,
    this.updatedAt,
    this.uploader,
  });

  factory ReleaseAsset.fromJson(Map<String, dynamic> json) =>
      _$ReleaseAssetFromJson(json);
}
