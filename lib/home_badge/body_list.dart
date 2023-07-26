import 'package:flutter/material.dart';
import 'package:getthedesignalive/home_badge/provied/proved.dart';
import 'package:provider/provider.dart';

import 'component/body_card.dart';

class Pet {
  String type;
  String breed;
  int age;
  String imageUrl;

  Pet(this.type, this.breed, this.age, this.imageUrl);
}

class BodyList extends StatelessWidget {
  const BodyList({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Consumer<SearchProvider>(builder: (context, searchProvider, v) {
      // List<Pet> petList = searchProvider.items;
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 500,
          child: ListView.builder(
              itemCount: petList.length,
              itemBuilder: (c, i) {
                return BodyCard(
                  image:
                      'https://drive.google.com/uc?export=view&id=${petList[i].imageUrl.substring(petList[i].imageUrl.indexOf('/d/') + 3, petList[i].imageUrl.indexOf('/view'))}',
                  type: petList[i].breed,
                  name: petList[i].type,
                  rate: petList[i].age,
                );
              }),
        ),
      );
    });
  }
}
