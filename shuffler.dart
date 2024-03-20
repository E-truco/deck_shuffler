import 'dart:math';

class Carta {
  var numero;
  var naipe;

  Carta(this.numero, this.naipe);

  @override
  String toString() => '(numero: $numero, naipe $naipe)';
}

List<Carta> generateDeck(int number_of_numeros, int number_of_naipes){

  List<Carta> deck = [];

 for(var i = 0; i < number_of_numeros; i++){
    for(var y = 0; y < number_of_naipes; y++){
      deck.add(new Carta(i, y));
    }
  }

  return deck;

}

List<Carta> shuffleDeck(List<Carta> deck){
  
  List<Carta> shuffledDeck = [];
  Random random = new Random(DateTime.now().microsecondsSinceEpoch);

  for(var i = 0; i < 40; i++){

    var randomNumber = random.nextInt(deck.length);

    shuffledDeck.add(deck[randomNumber]);
    
    deck.removeAt(randomNumber);
  }

  return shuffledDeck;

}


void main() {

  var deck = generateDeck(10, 4);

  var shuffled = shuffleDeck(deck);

  for(int i = 0; i < shuffled.length; i++){
    print(shuffled[i]);
  }

  print(shuffled.length);

}
