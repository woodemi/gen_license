import 'package:prompts/prompts.dart' as prompts;

void choose() {
  var selection =
      prompts.choose('Which license would you like to generate', licenses);
  print(selection);
}

const licenses = [
  '0bsd.txt',
  'afl-3.0.txt',
  'agpl-3.0.txt',
  'apache-2.0.txt',
  'artistic-2.0.txt',
  'bsd-2-clause.txt',
  'bsd-3-clause-clear.txt',
  'bsd-3-clause.txt',
  'bsd-4-clause.txt',
  'bsl-1.0.txt',
  'cc-by-4.0.txt',
  'cc-by-sa-4.0.txt',
  'cc0-1.0.txt',
  'cecill-2.1.txt',
  'ecl-2.0.txt',
  'epl-1.0.txt',
  'epl-2.0.txt',
  'eupl-1.1.txt',
  'eupl-1.2.txt',
  'gpl-2.0.txt',
  'gpl-3.0.txt',
  'isc.txt',
  'lgpl-2.1.txt',
  'lgpl-3.0.txt',
  'lppl-1.3c.txt',
  'mit.txt',
  'mpl-2.0.txt',
  'ms-pl.txt',
  'ms-rl.txt',
  'ncsa.txt',
  'odbl-1.0.txt',
  'ofl-1.1.txt',
  'osl-3.0.txt',
  'postgresql.txt',
  'unlicense.txt',
  'upl-1.0.txt',
  'vim.txt',
  'wtfpl.txt',
  'zlib.txt',
];
