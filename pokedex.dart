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

  Pokemon(this.number, this.name, this.hp, this.attack, this.defense, this.specialAttack, this.specialDefense, this.speed);

  void format() {
    print(
        "Pokedex No.: $number \nName: $name \nHP: $hp \nAttack: $attack \nDefense: $defense \nSpecial Attack: $specialAttack \nSpecial Defense: $specialDefense \nSpeed: $speed");
  }
}

int numberInput = 0;

bool isNumeric(String str) {
  return int.tryParse(str) != null;
}

void promptUser(Map<int, Pokemon> pokedex) {
  // Prompt message to the user
  print("\nEnter the Pokédex number (1 - 151), Pokémon name, or type 'exit' to quit:");

  // Read user input as a string
  String? input = stdin.readLineSync();

  // Check if the user didn't enter anything
  if (input == null || input.isEmpty) {
    print("Please enter something!");
    return promptUser(pokedex); // Restart the prompt
  }

  // Exit condition - if user types "exit", the program stops asking
  if (input.toLowerCase() == 'exit') {
    print("Goodbye, Trainer!");
    return; // Stops recursion and exits the function
  }

  // Check if the user entered a number
  if (isNumeric(input)) {
    // Convert the string input to an int
    int numberInput = int.tryParse(input)!;

    // Optional check - limit search if you haven't filled the full Pokédex yet
    if (numberInput > 81) {
      print("No Pokémon found for Pokedex number: $numberInput");
      return promptUser(pokedex); // Restart prompt
    }

    // Try to find the Pokémon by its number
    Pokemon? chosen = pokedex[numberInput];

    if (chosen != null) {
      // If found, display its stats
      chosen.format();
    } else {
      // If no Pokémon found at that number
      print("No Pokémon found for number: $numberInput");
    }

    return promptUser(pokedex); // Restart prompt after showing result
  }

  // If the user input is not numeric, treat it as a name search
  String clearedInput = input.replaceAll(' ', '');

  // Flag to track if we found the Pokémon
  bool found = false;

  // Loop through all Pokémon in the pokedex
  for (Pokemon pokemon in pokedex.values) {
    // Compare names ignoring spaces and casing
    if (pokemon.name.replaceAll(' ', '').toLowerCase() == clearedInput.toLowerCase()) {
      // If found, display its stats
      pokemon.format();
      found = true;
      break; // No need to search further
    }
  }

  if (!found) {
    // If no match found in the name search
    print("No Pokémon found with the name: $clearedInput");
  }

  // Restart prompt after search (whether found or not)
  promptUser(pokedex);
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
    41: Pokemon("041", "Zubat", 40, 45, 35, 30, 40, 55),
    42: Pokemon("042", "Golbat", 75, 80, 70, 65, 75, 90),
    43: Pokemon("043", "Oddish", 45, 50, 55, 75, 65, 30),
    44: Pokemon("044", "Gloom", 60, 65, 70, 85, 75, 40),
    45: Pokemon("045", "Vileplume", 75, 80, 85, 110, 90, 50),
    46: Pokemon("046", "Paras", 35, 70, 55, 45, 55, 25),
    47: Pokemon("047", "Parasect", 60, 95, 80, 60, 80, 30),
    48: Pokemon("048", "Venonat", 60, 55, 50, 40, 55, 45),
    49: Pokemon("049", "Venomoth", 70, 65, 60, 90, 75, 90),
    50: Pokemon("050", "Diglett", 10, 55, 25, 35, 45, 95),
    51: Pokemon("051", "Dugtrio", 35, 100, 50, 50, 70, 120),
    52: Pokemon("052", "Meowth", 40, 45, 35, 40, 40, 90),
    53: Pokemon("053", "Persian", 65, 70, 60, 65, 65, 115),
    54: Pokemon("054", "Psyduck", 50, 52, 48, 65, 50, 55),
    55: Pokemon("055", "Golduck", 80, 82, 78, 95, 80, 85),
    56: Pokemon("056", "Mankey", 40, 80, 35, 35, 45, 70),
    57: Pokemon("057", "Primeape", 65, 105, 60, 60, 70, 95),
    58: Pokemon("058", "Growlithe", 55, 70, 45, 70, 50, 60),
    59: Pokemon("059", "Arcanine", 90, 110, 80, 100, 80, 95),
    60: Pokemon("060", "Poliwag", 40, 50, 40, 40, 40, 90),
    61: Pokemon("061", "Poliwhirl", 65, 65, 65, 50, 50, 90),
    62: Pokemon("062", "Poliwrath", 90, 95, 95, 70, 90, 70),
    63: Pokemon("063", "Abra", 25, 20, 15, 105, 55, 90),
    64: Pokemon("064", "Kadabra", 40, 35, 30, 120, 70, 105),
    65: Pokemon("065", "Alakazam", 55, 50, 45, 135, 95, 120),
    66: Pokemon("066", "Machop", 70, 80, 50, 35, 35, 35),
    67: Pokemon("067", "Machoke", 80, 100, 70, 50, 60, 45),
    68: Pokemon("068", "Machamp", 90, 130, 80, 65, 85, 55),
    69: Pokemon("069", "Bellsprout", 50, 75, 35, 70, 30, 40),
    70: Pokemon("070", "Weepinbell", 65, 90, 50, 85, 45, 55),
    71: Pokemon("071", "Victreebel", 80, 105, 65, 100, 60, 70),
    72: Pokemon("072", "Tentacool", 40, 40, 35, 50, 100, 70),
    73: Pokemon("073", "Tentacruel", 80, 70, 65, 80, 120, 100),
    74: Pokemon("074", "Geodude", 40, 80, 100, 30, 30, 20),
    75: Pokemon("075", "Graveler", 55, 95, 115, 45, 45, 35),
    76: Pokemon("076", "Golem", 80, 120, 130, 55, 65, 45),
    77: Pokemon("077", "Ponyta", 50, 85, 55, 65, 65, 90),
    78: Pokemon("078", "Rapidash", 65, 100, 70, 80, 80, 105),
    79: Pokemon("079", "Slowpoke", 90, 65, 65, 40, 40, 15),
    80: Pokemon("080", "Slowbro", 95, 75, 110, 100, 80, 30),
    81: Pokemon("081", "Magnemite", 25, 35, 70, 95, 55, 45),
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
  print("Which Pokémon would you like to learn about today?");

  promptUser(pokedex);
}