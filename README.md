# GitHub Releases for Dart

The GitHub API client implemented by Dart is **only related to releases**.

## Usage

```dart
import 'package:github_releases/github_releases.dart';

void main() async {
  var releases = await getReleases('Hentioe', 'mikack-cli');

  var lastRelease = releases.first;
  print(lastRelease.tagName); // => '0.5.6'
}
```

For the complete structure field, please refer to: https://developer.github.com/v3/repos/releases/
