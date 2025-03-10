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
      "Pokedex No.: $number \nName: $name \nHP: $hp \nAttack: $attack \nDefense: $defense \nSpecial Attack: $specialAttack \nSpecial Defense: $specialDefense \nSpeed: $speed");
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
    11: Pokemon("011", "Metapod", 50, 20, 55, 25, 25, 30),
    12: Pokemon("012", "Butterfree", 60, 45, 50, 90, 80, 70),
    13: Pokemon("013", "Weedle", 40, 35, 30, 20, 20, 50),
    14: Pokemon("014", "Kakuna", 45, 25, 50, 25, 25, 35),
    15: Pokemon("015", "Beedrill", 65, 90, 40, 45, 80, 75),
    16: Pokemon("016", "Pidgey", 40, 45, 40, 35, 35, 56),
    17: Pokemon("017", "Pidgeotto", 63, 60, 55, 50, 50, 71),
    18: Pokemon("018", "Pidgeot", 83, 80, 75, 70, 70, 101),
    19: Pokemon("019", "Rattata", 30, 56, 35, 25, 35, 72),
    20: Pokemon("020", "Raticate", 55, 81, 60, 50, 70, 97),
    21: Pokemon("021", "Spearow", 40, 60, 30, 31, 31, 70),
    22: Pokemon("022", "Fearow", 65, 90, 65, 61, 61, 100),
    23: Pokemon("023", "Ekans", 35, 60, 44, 40, 54, 55),
    24: Pokemon("024", "Arbok", 60, 85, 69, 65, 79, 80),
    25: Pokemon("025", "Pikachu", 35, 55, 40, 50, 50, 90),
    26: Pokemon("026", "Raichu", 60, 90, 55, 90, 80, 110),
    27: Pokemon("027", "Sandshrew", 50, 75, 85, 20, 30, 40),
    28: Pokemon("028", "Sandslash", 75, 100, 110, 45, 55, 65),
    29: Pokemon("029", "Nidoran", 55, 47, 52, 40, 40, 41),
    30: Pokemon("030", "Nidorina", 70, 62, 67, 55, 55, 56),
    31: Pokemon("031", "Nidoqueen", 90, 92, 87, 75, 85, 76),
    32: Pokemon("032", "Nidoran♂", 46, 57, 40, 40, 40, 50),
    33: Pokemon("033", "Nidorino", 61, 72, 57, 55, 55, 65),
    34: Pokemon("034", "Nidoking", 81, 102, 77, 85, 75, 85),
    35: Pokemon("035", "Clefairy", 70, 45, 48, 60, 65, 35),
    36: Pokemon("036", "Clefable", 95, 70, 73, 95, 90, 60),
    37: Pokemon("037", "Vulpix", 38, 41, 40, 50, 65, 65),
    38: Pokemon("038", "Ninetales", 73, 76, 75, 81, 100, 100),
    39: Pokemon("039", "Jigglypuff", 115, 45, 20, 45, 25, 20),
    40: Pokemon("040", "Wigglytuff", 140, 70, 45, 85, 50, 45),
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
    // 150: 'Mew',
    // 151: 'Mewtwo',
  };

  print("Hi Trainer!");
  print("Which Pokemon would you like to learn abou today?");

  while (true) {
    print("Enter the Pokédex number of the Pokémon (1 - 151):");

    String? input = stdin.readLineSync();

    if (input == null) {
      print("Invalid Input")
    }

    if (pokedex.containsValue(input)) {

    }
    // int? userInput = int.tryParse(input ?? "");

    // if (userInput == null) {
    //   print("Invalid input! You need to enter a number.");
    //   continue;
    // } else if (userInput < 1 || userInput > 151) {
    //   print("Invalid number! Please enter a number between 1 and 151.");
    //   continue;
    // } 

    // var selectedPokemon = pokedex[userInput]; //Create variable of selected Pokemon

    // if (selectedPokemon != null) {
    //   selectedPokemon.format(); //Call the format method from the Pokemon Class
    // } else {
    //   print("That Pokémon hasn't been added yet!");
    // }

    break; // Exit while loop after showing selected Pokemon
  }

  print("Thanks for using the Pokédex!");
}