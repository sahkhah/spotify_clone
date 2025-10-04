import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';

class LoremGenerator {
 static String text = LoremIpsumGenerator.generate(
    paragraphs: 1,
    wordsPerParagraph: 20,
  );
}