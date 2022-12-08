import 'package:fluttertutorial/models/plant_model.dart';
import 'package:fluttertutorial/models/plants_facts.dart';

class MockPlants extends PlantModel {
  MockPlants(super.name, super.imageUrl, super.facts);

  static List<PlantModel> plantsList = [
    PlantModel(
        "Apple",
        "https://upload.wikimedia.org/wikipedia/commons/5/55/Apple_orchard_in_Tasmania.jpg",
        [
          PlantFacts(
              "Apple Info",
              "An apple is a sweet, edible fruit produced by an apple tree (Malus pumila). Apple trees are cultivated worldwide, and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today. Apples have been grown for thousands of years in Asia and Europe, and were brought to North America by European colonists. Apples have religious and mythological significance in many cultures, including Norse, Greek and European Christian traditions.<br><br>Apple trees are large if grown from seed. Generally apple cultivars are propagated by grafting onto rootstocks, which control the size of the resulting tree. There are more than 7,500 known cultivars of apples, resulting in a range of desired characteristics."
                  "Different cultivars are bred for various tastes and uses, including cooking, eating raw and cider production. Trees and fruit are prone to a number of fungal, bacterial and pest problems, which can be controlled by a number of organic and non-organic means. In 2010, the fruit's genome was sequenced as part of research on disease control and selective breeding in apple production.<br><br>Worldwide production of apples in 2014 was 84.6 million tonnes, with China accounting for 48% of the total.<br><br>(From <a href=\"https://en.wikipedia.org/wiki/Apple\">Wikipedia</a>)")
        ]
    ),
    PlantModel(
        "Beet",
        "https://upload.wikimedia.org/wikipedia/commons/2/29/Beetroot_jm26647.jpg",
        [
          PlantFacts(
              "Beet Info",
            "The beetroot is the taproot portion of the beet plant, usually known in North America as the beet and also known as the table beet, garden beet, red beet, or golden beet. It is one of several of the cultivated varieties of Beta vulgaris grown for their edible taproots and their leaves (called beet greens). These varieties have been classified as B. vulgaris subsp. vulgaris Conditiva Group.<br><br>Other than as a food, beets have use as a food colouring and as a medicinal plant. Many beet products are made from other Beta vulgaris varieties, particularly sugar beet.<br><br>(From <a href=\"https://en.wikipedia.org/wiki/Beetroot\">Wikipedia</a>)",
          ),
        ]
    ),
    PlantModel(
        "Cilantro",
        "https://upload.wikimedia.org/wikipedia/commons/5/51/A_scene_of_Coriander_leaves.JPG",
        [
          PlantFacts(
              "Cilantro Info",
              "Coriander, also known as cilantro or Chinese parsley, is an annual herb in the family Apiaceae. All parts of the plant are edible, but the fresh leaves and the dried seeds are the parts most traditionally used in cooking.<br><br>(From <a href=\"https://en.wikipedia.org/wiki/Coriander\">Wikipedia</a>)",
          ),
        ]
    ),
    PlantModel(
        "Tomato",
        "https://upload.wikimedia.org/wikipedia/commons/1/17/Cherry_tomatoes_red_and_green_2009_16x9.jpg",
        [
          PlantFacts(
              "Tomato Info",
              "The tomato is the edible, often red, berry of the nightshade Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America. The Nahuatl (Aztec language) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived. Its use as a cultivated food may have originated with the indigenous peoples of Mexico. The Spanish encountered the tomato from their contact with the Aztec during the Spanish colonization of the Americas and brought it to Europe. From there, the tomato was introduced to other parts of the European-colonized world during the 16th century.<br><br>The tomato is consumed in diverse ways, raw or cooked, in many dishes, sauces, salads, and drinks. While tomatoes are fruits – botanically classified as berries – they are commonly used as a vegetable ingredient or side dish.<br><br>Numerous varieties of the tomato plant are widely grown in temperate climates across the world, with greenhouses allowing for the production of tomatoes throughout all seasons of the year. Tomato plants typically grow to 1–3 meters (3–10 ft) in height. They are vines that have a weak stem that sprawls and typically needs support. Indeterminate tomato plants are perennials in their native habitat, but are cultivated as annuals. Determinate, or bush, plants are annuals that stop growing at a certain height and produce a crop all at once. The size of the tomato varies according to the cultivar, with a range of 0.5–4 inches (1.3–10.2 cm) in width.<br><br>(From <a href=\"https://en.wikipedia.org/wiki/Tomato\">Wikipedia</a>)",
          ),
        ]
    ),
    PlantModel(
        "Avocado",
        "https://upload.wikimedia.org/wikipedia/commons/e/e4/Branch_and_fruit_of_the_Maluma_avocado_cultivar.jpg",
        [
          PlantFacts(
              "Avocado Info",
              "The avocado (Persea americana) is a tree, long thought to have originated in South Central Mexico, classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado (or avocado pear or alligator pear), is botanically a large berry containing a single large seed.<br><br>Avocados are commercially valuable and are cultivated in tropical and Mediterranean climates throughout the world. They have a green-skinned, fleshy body that may be pear-shaped, egg-shaped, or spherical. Commercially, they ripen after harvesting. Avocado trees are partially self-pollinating and are often propagated through grafting to maintain a predictable quality and quantity of the fruit.<br><br>(From <a href=\"https://en.wikipedia.org/wiki/Avocado\">Wikipedia</a>)",
          ),
        ]
    ),
    PlantModel(
        "Pear",
        "https://upload.wikimedia.org/wikipedia/commons/1/13/More_pears.jpg",
        [
          PlantFacts(
              "Pear Info",
              "The pear tree and shrub are a species of genus Pyrus, in the family Rosaceae, bearing the pomaceous fruit of the same name. Several species of pear are valued for their edible fruit and juices while others are cultivated as trees.<br><br>(From <a href=\"https://en.wikipedia.org/wiki/Pear\">Wikipedia</a>)",
          ),
        ]
    ),
  ];

  static PlantModel FetchAny() {
    return plantsList.first;
  }

  static List<PlantModel> FetchAll() {
    return plantsList;
  }
}
