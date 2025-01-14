import 'package:slidy/src/core/models/custom_file.dart';

final _useCaseTemplate = r''' 
use_case:
  - import 'package:dartz/dartz.dart';
  - 
  - abstract class I$fileName|pascalcase {
  -   Future<Either<Exception, List<$fileName|pascalcase>>> call();
  - }
  - 
  - class $fileName|pascalcase extends I$fileName|pascalcase { 
  - 
  -   @override
  -   Future<Either<Exception, List<$fileName|pascalcase>>> call() async {
  -     throw UnimplementedError();
  -   }
  - }

use_case_test:
  - import 'package:flutter_test/flutter_test.dart';
  - $arg2
  -  
  - void main() {
  - 
  -   setUpAll(() {
  -   });
  - 
  -   test('increment count', () async {
  -   var featureMessage = await $arg1()();  
  -    expect(featureMessage  | [], isInstanceOf<List<$arg1>>());
  -   });
  - }
'''
    .split('\n');

final use_case = CustomFile(lines: _useCaseTemplate);
