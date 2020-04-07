part of 'release.dart';

Release _$ReleaseFromJson(Map<String, dynamic> json) {
  return Release(
    url: json['url'] as String,
    htmlUrl: json['html_url'] as String,
    assetsUrl: json['assets_url'] as String,
    uploadUrl: json['upload_url'] as String,
    tarballUrl: json['tarball_url'] as String,
    zipballUrl: json['zipball_url'] as String,
    id: json['id'] as int,
    nodeId: json['node_id'] as String,
    tagName: json['tag_name'] as String,
    targetCommitish: json['target_commitish'] as String,
    name: json['name'] as String,
    body: json['body'] as String,
    isDraft: json['draft'] as bool,
    isPrerelease: json['prerelease'] as bool,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    publishedAt: json['published_at'] == null
        ? null
        : DateTime.parse(json['published_at'] as String),
    author: json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>),
    assets: (json['assets'] as List)
        ?.map((e) =>
            e == null ? null : ReleaseAsset.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
