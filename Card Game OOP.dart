/*
Make A Deck -> Create a new deck of playing cards
printCards -> print all the cards in this deck
shuffle -> shuffle the cards in the deck randomly
cardsWithSuit -> Find all the cards with a given suit
deal -> Deal out some number of cards from this deck
removeCard -> Remove a specific card from the deck
*/



//Main Function 
void main() {
  //Autometically adds 52 cards using constructor function
  var deck = new Deck();
  print(deck);
  print(deck.cardsWithSuit('Diamonds'));
  
}

// Represents the Deck of card
class Deck {
  
  //List are the array of cards, we use lists instead of arrays
  //We have to initialize empty value else we can't add anything
  List<Card> cards = [];
  
  //The constructor function
  Deck() {
		var ranks = ['Ace', '2', '3', '4', '5','6','7','8','9','10','Joker','Queen','King'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    
    
    for (var i in suits) {
      for (var j in ranks) {
        // For every suit and rank we will create a card
        var card = new Card(j,i);
        cards.add(card);
      }
    }
  }
  
  //toString method returns the String representation of the object
  toString() {
    return cards.toString();
  }
  
  //Randomize the order and shuffle the deck
  //shuffle is a built in method
  
  shuffle() {
    cards.shuffle();
  }
  
  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }
  
  deal(int handSize) {
    //Make a sublist of the cards from 0 to hand size
    var hand = cards.sublist(0, handSize);
    //Make a sublist from handsize to the remaining card size
    cards = cards.sublist(handSize);
    return hand;
  }
  
  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}

//Represents the card individually with a suit and rank
class Card {
  String suit;
  String rank;
  
  //The constructor function
  Card(this.rank, this.suit);
  
  //Returns string representation of the card
  toString() {
    return '$rank of $suit';
  }
}
