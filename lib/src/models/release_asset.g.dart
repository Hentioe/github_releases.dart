part of 'release_asset.dart';

ReleaseAsset _$ReleaseAssetFromJson(Map<String, dynamic> json) {
  return ReleaseAsset(
    url: json['url'] as String,
    browserDownloadUrl: json['browser_download_url'] as String,
    id: json['id'] as int,
    nodeId: json['node_id'] as String,
    name: json['name'] as String,
    label: json['label'] as String,
    state: json['state'] as String,
    contentType: json['content_type'] as String,
    size: json['size'] as int,
    downloadCount: json['download_count'] as int,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    uploader: json['uploader'] == null
        ? null
        : User.fromJson(json['uploader'] as Map<String, dynamic>),
  );
}
