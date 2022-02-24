void main() {
  String input = "12345";
  var word = input.split('');

  for (int i = 0; i < word.length; i++) {
    var value = word[i];
    if (int.parse(value) % 2 == 0) {
      word.insert(i + 1, '-');
    }
  }

  var output = word.join();
  print(output);
}
