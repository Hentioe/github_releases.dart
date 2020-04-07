import 'package:test/test.dart';
import 'package:github_releases/github_releases.dart';

void main() {
  test('.getReleases()', () async {
    var releases = await getReleases('Hentioe', 'mikack-cli');

    expect(releases.length, isNonZero);
    expect('0.5.6' == releases.first.tagName, isTrue);
  });
}
