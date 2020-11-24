import 'dart:io';

import 'package:prompts/prompts.dart' as prompts;
import 'package:http/http.dart' as http;

part 'licenses.dart';

void choose() async {
  var selection =
      prompts.choose('Which license would you like to generate', licenses);
  var fullName = prompts.get('Author\'s full name?');
  var licenseInfo = await http.get(
      'https://raw.githubusercontent.com/github/choosealicense.com/gh-pages/_licenses/$selection');
  var split = licenseInfo.body.split('---');
  _showDetail(selection, split[1]);
  await _writeContent(split[2], fullName);
}

void _showDetail(String selection, String detail) {
  print('--- $selection detail ---');
  print(detail);
}

Future _writeContent(String content, String fullName) async {
  print('--- Generation start ---');
  var generacted = content
      .replaceAll('[year]', '${DateTime.now().year}')
      .replaceAll('[fullname]', fullName);
  await File('LICENSE').writeAsString(generacted);
  print('--- Generation end ---');
}
