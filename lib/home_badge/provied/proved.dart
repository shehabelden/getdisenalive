import 'package:flutter/material.dart';

import '../body_list.dart';

List<Pet> petList = [
  Pet(
    "Dog",
    "Golden",
    20,
    "https://drive.google.com/file/d/1SVXNgYjWidATdPpPfswlWtS31DnhjB-2/view?usp=sharing",
  ),
  Pet(
    "Lablador",
    "Golden",
    18,
    "https://drive.google.com/file/d/152WsHjSIgQUy0gS_WQEo3mWOSMK8v1kM/view?usp=sharing",
  ),
  Pet(
    "Dog",
    "Cardigan",
    12,
    "https://drive.google.com/file/d/1fHoNz-wywIk_ta4RIJzXm7yLrObyKDty/view?usp=sharing",
  ),
  Pet(
    "Cat",
    "Street Cat",
    17,
    "https://drive.google.com/file/d/1SL7ZirhhuTpgk7wRe_t0vB_3xD9iqCGm/view?usp=sharing",
  ),
  Pet(
    "Cat",
    "White Cat",
    19,
    "https://drive.google.com/file/d/1C_S4qQ4wck3LasJ1Bs5Lz8yhwN60SmTH/view?usp=sharing",
  ),
  Pet(
    "Cat",
    "Kitten",
    18,
    "https://drive.google.com/file/d/1qQILdlJ3gtm_0VBzmSoqgTbisVZ-7kr9/view?usp=sharing",
  ),
  Pet(
    "Bird",
    "House Bird",
    15,
    "https://drive.google.com/file/d/1LbUWy1JxxkSGSd4cu4dMBK5ChilbFud8/view?usp=sharing",
  ),
  Pet(
    "Bird",
    "Parrot",
    14,
    "https://drive.google.com/file/d/1B9eAFq_9D75eXtn0BJM6gtq811eby6QN/view?usp=sharing",
  ),
  Pet(
    "Bird",
    "Pink Bird",
    15,
    "https://drive.google.com/file/d/1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah/view?usp=sharing",
  ),
  Pet(
    "Bird",
    "Talking Parrot",
    17,
    "https://drive.google.com/file/d/1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah/view?usp=sharing",
  ),
  Pet(
    "Rat",
    "Hamster",
    9,
    "https://drive.google.com/file/d/11tVuPyyv23mByiFNHrJRuE55gyhMrGA2/view?usp=sharing",
  ),
  Pet(
    "Rabbit",
    "Brown Rabbit",
    16,
    "https://drive.google.com/file/d/1huzYq6qlL4BiFzXqD7SuMYM67J5Ea0bV/view?usp=sharing",
  ),
  Pet(
    "Rabbit",
    "Gray Rabbit",
    17,
    "https://drive.google.com/file/d/1lxI-yXMPIp2nz2MLc7duJ5Sw6lrA-AsJ/view?usp=sharing",
  ),
];

class SearchProvider extends ChangeNotifier {
  List<Pet> items = petList;

  void filterSearchResults(String query) {
    items = petList
        .where((item) => item.type.toLowerCase().contains(query.toLowerCase()))
        .toList();
    notifyListeners();
  }
}
