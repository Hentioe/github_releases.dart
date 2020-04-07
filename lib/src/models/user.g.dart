part of 'user.dart';

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    login: json['login'] as String,
    id: json['id'] as int,
    avatarUrl: json['avatar_url'] as String,
    gravatarId: json['gravatar_id'] as String,
    url: json['url'] as String,
    htmlUrl: json['html_url'] as String,
    followersUrl: json['followers_url'] as String,
    followingUrl: json['following_url'] as String,
    gistsUrl: json['gists_url'] as String,
    starredUrl: json['starred_url'] as String,
    subscriptionsUrl: json['subscriptions_url'] as String,
    organizationsUrl: json['organizations_url'] as String,
    reposUrl: json['repos_url'] as String,
    eventsUrl: json['events_url'] as String,
    receivedEventsUrl: json['received_events_url'] as String,
    type: json['type'] as String,
    isSiteAdmin: json['site_admin'] as bool,
  );
}
