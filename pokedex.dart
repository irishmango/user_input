import 'dart:io';

class Pokemon {
  final String number;
  final String name;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  Pokemon(this.number, this.name, this.hp, this.attack, this.defense, this.specialAttack, this.specialDefense, this.speed); // Pokemon Constructor

  void format() {
    print(
      "Pokedex No.: $number \nName: $name \nHP: $hp \nAttack: $attack \nDefense: $defense \nSpecial Attack: $specialAttack \nSpecial Defense \nSpeed $speed");
  }
}

 void main() {

  Map<int, Pokemon> pokedex = {
    1: Pokemon("001", "Bulbasaur", 45, 49, 49, 65, 65, 45),
    2: Pokemon("002", "Ivysaur", 60, 62, 63, 80, 80, 60),
    3: Pokemon("003", "Venusaur", 80, 82, 83, 100, 100, 80),
    4: Pokemon("004", "Charmander", 39, 52, 43, 60, 50, 65),
    5: Pokemon("005", "Charmeleon", 58, 64, 58, 80, 65, 80),
    6: Pokemon("006", "Charizard", 78, 84, 78, 109, 85, 100),
    7: Pokemon("007", "Squirtle", 44, 48, 65, 50, 64, 43),
    8: Pokemon("008", "Wartortle", 59, 63, 80, 65, 80, 58),
    9: Pokemon("009", "Blastoise", 79, 83, 100, 85, 105, 78),
    10: Pokemon("010", "Caterpie", 45, 30, 35, 20, 20, 45),
    // 11: 'Metapod',
    // 12: 'Butterfree',
    // 13: 'Weedle',
    // 14: 'Kakuna',
    // 15: 'Beedrill',
    // 16: 'Pidgey',
    // 17: 'Pidgeotto',
    // 18: 'Pidgeot',
    // 19: 'Rattata',
    // 20: 'Raticate',
    // 21: 'Spearow',
    // 22: 'Fearow',
    // 23: 'Ekans',
    // 24: 'Arbok',
    // 25: 'Pikachu',
    // 26: 'Raichu',
    // 27: 'Sandshrew',
    // 28: 'Sandslash',
    // 29: 'Nidoran♀',
    // 30: 'Nidorina',
    // 31: 'Nidoqueen',
    // 32: 'Nidoran♂',
    // 33: 'Nidorino',
    // 34: 'Nidoking',
    // 35: 'Clefairy',
    // 36: 'Clefable',
    // 37: 'Vulpix',
    // 38: 'Ninetales',
    // 39: 'Jigglypuff',
    // 40: 'Wigglytuff',
    // 41: 'Zubat',
    // 42: 'Golbat',
    // 43: 'Oddish',
    // 44: 'Gloom',
    // 45: 'Vileplume',
    // 46: 'Paras',
    // 47: 'Parasect',
    // 48: 'Venonat',
    // 49: 'Venomoth',
    // 50: 'Diglett',
    // 51: 'Dugtrio',
    // 52: 'Meowth',
    // 53: 'Persian',
    // 54: 'Psyduck',
    // 55: 'Golduck',
    // 56: 'Mankey',
    // 57: 'Primeape',
    // 58: 'Growlithe',
    // 59: 'Arcanine',
    // 60: 'Poliwag',
    // 61: 'Poliwhirl',
    // 62: 'Poliwrath',
    // 63: 'Abra',
    // 64: 'Kadabra',
    // 65: 'Alakazam',
    // 66: 'Machop',
    // 67: 'Machoke',
    // 68: 'Machamp',
    // 69: 'Bellsprout',
    // 70: 'Weepinbell',
    // 71: 'Victreebel',
    // 72: 'Tentacool',
    // 73: 'Tentacruel',
    // 74: 'Geodude',
    // 75: 'Graveler',
    // 76: 'Golem',
    // 77: 'Ponyta',
    // 78: 'Rapidash',
    // 79: 'Slowpoke',
    // 80: 'Slowbro',
    // 81: 'Magnemite',
    // 82: 'Magneton',
    // 83: 'Farfetch\'d',
    // 84: 'Doduo',
    // 85: 'Dodrio',
    // 86: 'Seel',
    // 87: 'Dewgong',
    // 88: 'Grimer',
    // 89: 'Muk',
    // 90: 'Shellder',
    // 91: 'Cloyster',
    // 92: 'Gastly',
    // 93: 'Haunter',
    // 94: 'Gengar',
    // 95: 'Onix',
    // 96: 'Drowzee',
    // 97: 'Hypno',
    // 98: 'Krabby',
    // 99: 'Kingler',
    // 100: 'Voltorb',
    // 101: 'Electrode',
    // 102: 'Exeggcute',
    // 103: 'Exeggutor',
    // 104: 'Cubone',
    // 105: 'Marowak',
    // 106: 'Hitmonlee',
    // 107: 'Hitmonchan',
    // 108: 'Lickitung',
    // 109: 'Koffing',
    // 110: 'Weezing',
    // 111: 'Rhyhorn',
    // 112: 'Rhydon',
    // 113: 'Chansey',
    // 114: 'Tangela',
    // 115: 'Kangaskhan',
    // 116: 'Horsea',
    // 117: 'Seadra',
    // 118: 'Goldeen',
    // 119: 'Seaking',
    // 120: 'Staryu',
    // 121: 'Starmie',
    // 122: 'Mr. Mime',
    // 123: 'Scyther',
    // 124: 'Jynx',
    // 125: 'Electabuzz',
    // 126: 'Magmar',
    // 127: 'Pinsir',
    // 128: 'Tauros',
    // 129: 'Magikarp',
    // 130: 'Gyarados',
    // 131: 'Lapras',
    // 132: 'Ditto',
    // 133: 'Eevee',
    // 134: 'Vaporeon',
    // 135: 'Jolteon',
    // 136: 'Flareon',
    // 137: 'Porygon',
    // 138: 'Omanyte',
    // 139: 'Omastar',
    // 140: 'Kabuto',
    // 141: 'Kabutops',
    // 142: 'Aerodactyl',
    // 143: 'Snorlax',
    // 144: 'Articuno',
    // 145: 'Zapdos',
    // 146: 'Moltres',
    // 147: 'Dratini',
    // 148: 'Dragonair',
    // 149: 'Dragonite',
    // 150: 'Mewtwo',
    // 151: 'Mew',
  };

  print("Hi Trainer!");
  print("Which Pokemon would you like to learn abou today?");

  while (true) {
    print("Enter the Pokédex number of the Pokémon (1 - 151):");

    String? input = stdin.readLineSync();
    int? userInput = int.tryParse(input ?? "");

    if (userInput == null) {
      print("Invalid input! You need to enter a number.");
      continue;
    } else if (userInput < 1 || userInput > 151) {
      print("Invalid number! Please enter a number between 1 and 151.");
      continue;
    } 

    var selectedPokemon = pokedex[userInput]; //Create variable of selected Pokemon

    if (selectedPokemon != null) {
      selectedPokemon.format(); //Call the format method from the Pokemon Class
    } else {
      print("That Pokémon hasn't been added yet!");
    }

    break; // Exit after showing selected Pokemon
  }

  print("Thanks for using the Pokédex!");
}