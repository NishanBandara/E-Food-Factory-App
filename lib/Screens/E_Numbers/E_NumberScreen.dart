import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:efood_factory/Screens/E_Numbers/E_NumberDetails.dart';
import 'package:efood_factory/Widgets/Color/CustomColor.dart';
import 'package:efood_factory/Widgets/CustomPainter/BackgroundPainter.dart';
import 'package:efood_factory/Widgets/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../HomeScreen.dart';
import '../Models/eNumberModel.dart';

class E_NumberScanner extends StatefulWidget {
  @override
  _E_NumberScannerState createState() => _E_NumberScannerState();
}

class _E_NumberScannerState extends State<E_NumberScanner> {
  FocusNode? _focusNode;
  bool realData = true;
  var index;

  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "eNumber": "E100",
      "eName": 'Curcumin',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Safe'
    },
    {
      "id": 2,
      "eNumber": "E101",
      "eName": 'Riboflavin or lactoflavin',
      "Description":
          'Naturally occurring orange/yellow colour, extracted from the spice turmeric',
      "Example": 'Safe'
    },
    {
      "id": 3,
      "eNumber": "E102",
      "eName": 'Tartrazine',
      "Description": ' Colour - Yellow and Orange ',
      "Example":
          'Dangerous May increase hyperactivity in affected children, Asthmatics sometimes react badly, Take care if you are sensitive to Aspirin.'
    },
    {
      "id": 4,
      "eNumber": "E104",
      "eName": 'Quinoline Yellow',
      "Description": 'Colour - Yellow and Orange',
      "Example": 'Dangerous May increase hyperactivity in affected children.'
    },
    {
      "id": 5,
      "eNumber": "E110",
      "eName": 'Sunset Yellow FCF / Orange Yellow S',
      "Description": 'Colour - Yellow and Orange',
      "Example":
          'Dangerous May increase hyperactivity in affected children. Take care if you are sensitive to Aspirin.'
    },
    {
      "id": 6,
      "eNumber": "E120",
      "eName": 'Cochineal / Carminic Acid',
      "Description": 'Colour - Red',
      "Example": 'Dangerous May increase hyperactivity in affected children.'
    },
    {
      "id": 7,
      "eNumber": "E122",
      "eName": 'Carmoisine / Azorubine',
      "Description": 'Colour - Red',
      "Example":
          'Suspicious May increase hyperactivity in affected children. Asthmatics sometimes react badly. Take care if you are sensitive to Aspirin.'
    },
    {
      "id": 8,
      "eNumber": "E123",
      "eName": 'Amaranth',
      "Description": 'Colour - Red',
      "Example":
          'Very Dangerous May increase hyperactivity in affected children. Take care if you are sensitive to Aspirin.'
    },
    {
      "id": 9,
      "eNumber": "E124",
      "eName": 'Ponceau 4R / Cochineal Red A',
      "Description": 'Colour - Red',
      "Example":
          'Dangerous May increase hyperactivity in affected children. Asthmatics sometimes react badly. Take care if you are sensitive to Aspirin.'
    },
    {
      "id": 10,
      "eNumber": "E127",
      "eName": 'Erythrosine BS',
      "Description": 'Colour - Red',
      "Example": 'Dangerous Same as E104'
    },
    {
      "id": 11,
      "eNumber": "E131",
      "eName": 'Patent Blue V',
      "Description": 'Colour - Blue',
      "Example":
          'Cancer May increase hyperactivity in affected children. Asthmatics sometimes react badly. Take care if you are sensitive to Aspirin. Be cautious if you suffer from allergies or intolerances.'
    },
    {
      "id": 12,
      "eNumber": "E132",
      "eName": 'Indigo Carmine / Idigotine',
      "Description": 'Colour - Blue',
      "Example": 'Same as E131'
    },
    {
      "id": 13,
      "eNumber": "E140",
      "eName": 'Chlorophyll',
      "Description": 'Colour - Green',
      "Example": 'Safe'
    },
    {
      "id": 14,
      "eNumber": "E141",
      "eName": 'Copper Complex of Chlorophyll',
      "Description": 'Colour - Green',
      "Example": 'Suspicious'
    },
    {
      "id": 15,
      "eNumber": "E142",
      "eName": 'Green S / Acid Brilliant Green BS',
      "Description": 'Colour - Green',
      "Example": 'Cancer'
    },
    {
      "id": 16,
      "eNumber": "E150",
      "eName": 'Caramel',
      "Description": 'Colour - Brown and Black',
      "Example": 'Suspicious'
    },
    {
      "id": 17,
      "eNumber": "E151",
      "eName": 'Black PN / Brilliant Black BN',
      "Description": 'Colour - Brown and Black',
      "Example": 'Same as E104'
    },
    {
      "id": 18,
      "eNumber": "E153",
      "eName": 'Carbon Black / Vegetable Carbon (Charcoal)',
      "Description": 'Colour - Brown and Black',
      "Example":
          'Suspicious May increase hyperactivity in affected children. Be cautious if you suffer from allergies or intolerances.'
    },
    {
      "id": 19,
      "eNumber": "E160a",
      "eName": 'Alpha, Beta, Gamma Carotene',
      "Description": 'Colour - Carotene derivative',
      "Example": 'Safe'
    },
    {
      "id": 20,
      "eNumber": "E160b",
      "eName": 'Annatto, Bixin, Norbixin',
      "Description": 'Colour - Carotene derivative',
      "Example": 'Safe'
    },
    {
      "id": 21,
      "eNumber": "E160c",
      "eName": 'Capsanthin / Capsorbin',
      "Description": 'Colour - Carotene derivative',
      "Example": 'Safe'
    },
    {
      "id": 22,
      "eNumber": "E160d",
      "eName": 'Lycopene',
      "Description": 'Colour - Carotene derivative',
      "Example": 'Safe'
    },
    {
      "id": 23,
      "eNumber": "E160e",
      "eName": 'Beta-apo-8-carotenal',
      "Description": 'Colour - Carotene derivative',
      "Example": 'Safe'
    },
    {
      "id": 24,
      "eNumber": "E160f",
      "eName": 'Ethyl ester of Beta-apo-8- cartonoic acid',
      "Description": 'Colour - Carotene derivative',
      "Example": 'Safe'
    },
    {
      "id": 25,
      "eNumber": "E161a",
      "eName": 'Flavoxanthin',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 26,
      "eNumber": "E161b",
      "eName": 'Lutein',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 27,
      "eNumber": "E161c",
      "eName": 'Cryptoxanthin',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 28,
      "eNumber": "E161d",
      "eName": 'Rubixanthin',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 29,
      "eNumber": "E161e",
      "eName": 'Violaxanthin',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 30,
      "eNumber": "E161f",
      "eName": 'Rhodoxanthin',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 31,
      "eNumber": "E161g",
      "eName": 'Canthaxanthin',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 32,
      "eNumber": "E162",
      "eName": 'Beetroot Red / Betanin',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 33,
      "eNumber": "E163",
      "eName": 'Anthocyanins',
      "Description": 'Colour - Plant',
      "Example": 'Safe'
    },
    {
      "id": 34,
      "eNumber": "E170",
      "eName": 'Calcium Carbonate (Chalk)',
      "Description": 'Colour - Inorganic',
      "Example": 'Safe'
    },
    {
      "id": 35,
      "eNumber": "E171",
      "eName": 'Titanium Dioxide',
      "Description": 'Colour - Inorganic',
      "Example": 'Suspicious'
    },
    {
      "id": 36,
      "eNumber": "E172",
      "eName": 'Iron Oxides and Hydroxides',
      "Description": 'Colour - Inorganic',
    },
    {
      "id": 37,
      "eNumber": "E173",
      "eName": 'Aluminium',
      "Description": 'Colour - Inorganic',
      "Example": 'Suspicious'
    },
    {
      "id": 38,
      "eNumber": "E174",
      "eName": 'Silver',
      "Description": 'Colour - Inorganic',
      "Example": 'Safe'
    },
    {
      "id": 39,
      "eNumber": "E175",
      "eName": 'Gold',
      "Description": 'Colour - Inorganic',
      "Example": 'Safe'
    },
    {
      "id": 40,
      "eNumber": "E180",
      "eName": 'Pigment Rubine / Lithol Rubine BK',
      "Description": 'Colour - Inorganic',
      "Example": 'Suspicious'
    },
    {
      "id": 41,
      "eNumber": "E201",
      "eName": 'Soduim Sorbate',
      "Description": 'Preservative - Sorbic Acid and its salts',
      "Example": 'Dangerous Headaches Intestine Upset'
    },
    {
      "id": 42,
      "eNumber": "E202",
      "eName": 'Potassium Sorbate',
      "Description": 'Preservative - Sorbic Acid and its salts',
      "Example": 'Dangerous Headaches Intestine Upset'
    },
    {
      "id": 43,
      "eNumber": "E203",
      "eName": 'Calcium Sorbate',
      "Description": 'Preservative - Sorbic Acid and its salts',
      "Example": 'Dangerous Headaches Intestine Upset'
    },
    {
      "id": 44,
      "eNumber": "E210",
      "eName": 'Benzoic Acid',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example":
          'Cancer Headaches Intestine Upset May increase hyperactivity in affected children. Asthmatics sometimes react badly. Be cautious if you suffer from allergies or intolerances.'
    },
    {
      "id": 45,
      "eNumber": "E211",
      "eName": 'Sodium Benzoate',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 46,
      "eNumber": "E212",
      "eName": 'Potassium Benzoate',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 47,
      "eNumber": "E213",
      "eName": 'Calcium Benzoate',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 48,
      "eNumber": "E214",
      "eName": 'Ethyl 4-hydroxybenzoate',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 49,
      "eNumber": "E215",
      "eName": 'Ethyl 4-hydroxybenzoate, Sodium Salt',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 50,
      "eNumber": "E216",
      "eName": 'Propyl 4-hydroxybenzoate',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 50,
      "eNumber": "E217",
      "eName": 'Propyl 4-hydroxybenzoate, Sodium Salt',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 51,
      "eNumber": "E218",
      "eName": 'Methyl 4-hydroxybenzoate',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 52,
      "eNumber": "E219",
      "eName": 'Methyl 4-hydroxybenzoate, Sodium Salt',
      "Description": 'Preservative - Benzoic Acid and its salts',
      "Example": 'Cancer Same as E210'
    },
    {
      "id": 53,
      "eNumber": "E220",
      "eName": 'Sulphur Dioxide',
      "Description": 'Preservative - Sulphur Dioxide and its salts',
      "Example": 'Headaches Intestine Upset Skin Disorders Destroys Vitamin B12'
    },
    {
      "id": 54,
      "eNumber": "E221",
      "eName": 'Sodium Sulphite',
      "Description": 'Preservative - Sulphur Dioxide and its salts',
      "Example": 'Dangerous Same as E220'
    },
    {
      "id": 55,
      "eNumber": "E222",
      "eName": 'Sodium Hydrogen Sulphite',
      "Description": 'Preservative - Sulphur Dioxide and its salts',
      "Example": 'Dangerous Same as E220'
    },
    {
      "id": 56,
      "eNumber": "E223",
      "eName": 'Sodium Metabisulphite',
      "Description": 'Preservative - Sulphur Dioxide and its salts',
      "Example": 'Dangerous Same as E220'
    },
    {
      "id": 56,
      "eNumber": "E224",
      "eName": 'Potassium Metabisulphite',
      "Description": 'Preservative - Sulphur Dioxide and its salts',
      "Example": 'Dangerous Same as E220'
    },
    {
      "id": 57,
      "eNumber": "E226",
      "eName": 'Calcium Sulphite',
      "Description": 'Preservative - Sulphur Dioxide and its salts',
      "Example": 'Dangerous Same as E220'
    },
    {
      "id": 58,
      "eNumber": "E227",
      "eName": 'Calcium Hydrogen Sulphite',
      "Description": 'Preservative - Sulphur Dioxide and its salts',
      "Example": 'Dangerous Same as E220'
    },
    {
      "id": 59,
      "eNumber": "E230",
      "eName": 'Biphenyl / Diphenyl',
      "Description": 'Preservative - Biphenyl and its derivatives',
      "Example": 'Dangerous Headaches Intestine Upset Skin Disorders'
    },
    {
      "id": 60,
      "eNumber": "E231",
      "eName": '2-Hydroxybiphenyl',
      "Description": 'Preservative - Biphenyl and its derivatives',
      "Example": 'Dangerous Same as E230'
    },
    {
      "id": 61,
      "eNumber": "E232",
      "eName": 'Sodium Biphenyl-2-yl Oxide',
      "Description": 'Preservative - Biphenyl and its derivatives',
      "Example": 'Dangerous Same as E230'
    },
    {
      "id": 62,
      "eNumber": "E233",
      "eName": '2-(Thiazol-4-yl) Benzimidazole',
      "Description": 'Preservative - other',
      "Example": 'Dangerous Same as E230'
    },
    {
      "id": 63,
      "eNumber": "E239",
      "eName": 'Hexamine',
      "Description": 'Preservative - other',
      "Example": 'Cancer Same as E230'
    },
    {
      "id": 64,
      "eNumber": "E249",
      "eName": 'Potassium Nitrate',
      "Description": 'Preservative - Pickling Salts',
      "Example": 'Dangerous Same as E230'
    },
    {
      "id": 65,
      "eNumber": "E250",
      "eName": 'Sodium Nitrite',
      "Description": 'Preservative - Pickling Salts',
      "Example": 'Dangerous Same as E230 Blood Pressure Upset'
    },
    {
      "id": 66,
      "eNumber": "E251",
      "eName": 'Sodium Nitrite',
      "Description": 'Preservative - Pickling Salts',
      "Example": 'Dangerous Same as E230 Blood Pressure Upset'
    },
    {
      "id": 67,
      "eNumber": "E252",
      "eName": 'Potassium Nitrate(Saltpetre)',
      "Description": 'Preservative - Pickling Salts',
      "Example": 'Dangerous Same as E230 Blood Pressure Upset'
    },
    {
      "id": 68,
      "eNumber": "E260",
      "eName": 'Acetic Acid',
      "Description": 'Miscellaneous - Acids and their Salts',
      "Example": 'Dangerous Headaches Intestine Upset Skin Disorders'
    },
    {
      "id": 69,
      "eNumber": "E261",
      "eName": 'Potassium Acetate',
      "Description": 'Miscellaneous - Acids and their Salts',
      "Example": 'Dangerous Headaches Intestine Upset Skin Disorders'
    },
    {
      "id": 70,
      "eNumber": "E262",
      "eName": 'Potassium Hydrogen Diacetate',
      "Description": 'Miscellaneous - Acids and their Salts',
      "Example": 'Dangerous Headaches Intestine Upset Skin Disorders'
    },
    {
      "id": 71,
      "eNumber": "E263",
      "eName": 'Calcium Acetate',
      "Description": 'Miscellaneous - Acids and their Salts',
      "Example": 'Safe'
    },
    {
      "id": 72,
      "eNumber": "E270",
      "eName": 'Lactic Acid',
      "Description": 'Miscellaneous - Acids and their Salts',
      "Example": 'Safe'
    },
    {
      "id": 73,
      "eNumber": "E280",
      "eName": 'Propionic Acid',
      "Description": 'Preservative - Acids and their Salts',
      "Example": 'Safe'
    },
    {
      "id": 74,
      "eNumber": "E281",
      "eName": 'Sodium Propionate',
      "Description": 'Preservative - Acids and their Salts',
      "Example": 'Safe'
    },
    {
      "id": 74,
      "eNumber": "E282",
      "eName": 'Calcium Propionate',
      "Description": 'Preservative - Acids and their Salts',
      "Example": 'Safe'
    },
    {
      "id": 75,
      "eNumber": "E283",
      "eName": 'Potassuim Propionate',
      "Description": 'Preservative - Acids and their Salts',
      "Example": 'Safe'
    },
    {
      "id": 76,
      "eNumber": "E290",
      "eName": 'Carbon Dioxide',
      "Description": 'Miscellaneous - Acids and their Salts',
      "Example": 'Dangerous Intestine Upset'
    },
    {
      "id": 77,
      "eNumber": "E300",
      "eName": 'L-Ascorbic Acid (Vitamin C)',
      "Description": 'Antioxidants- Vitamin C and derivatives',
      "Example": 'Safe'
    },
    {
      "id": 77,
      "eNumber": "E301",
      "eName": 'Sodium-L-Ascorbate',
      "Description": 'Antioxidants- Vitamin C and derivatives',
      "Example": 'Safe'
    },
    {
      "id": 78,
      "eNumber": "E302",
      "eName": 'Calcium-L-Ascorbate',
      "Description": 'Antioxidants- Vitamin C and derivatives',
      "Example": 'Safe'
    },
    {
      "id": 78,
      "eNumber": "E304",
      "eName": 'Ascorbyl Palmitate',
      "Description": 'Antioxidants- Vitamin C and derivatives',
      "Example": 'Safe'
    },
    {
      "id": 79,
      "eNumber": "E306",
      "eName": 'Natural Extracts rich in Tocopherols',
      "Description": 'Antioxidants- Vitamin E',
      "Example": 'Safe'
    },
    {
      "id": 80,
      "eNumber": "E307",
      "eName": 'Synthetic Alpha-Tocopherol',
      "Description": 'Antioxidants- Vitamin E',
      "Example": 'Safe'
    },
    {
      "id": 81,
      "eNumber": "E308",
      "eName": 'Synthetic Gamma-Tocophero',
      "Description": 'Antioxidants- Vitamin E',
      "Example": 'Safe'
    },
    {
      "id": 82,
      "eNumber": "E309",
      "eName": 'Synthetic Delta-Tocophero',
      "Description": 'Antioxidants- Vitamin E',
      "Example": 'Safe'
    },
    {
      "id": 83,
      "eNumber": "E310",
      "eName": 'Propyl Gallate',
      "Description": 'Antioxidants- other',
    },
    {
      "id": 84,
      "eNumber": "E311",
      "eName": 'Octyl Gallate',
      "Description": 'Antioxidants- other',
      "Example": 'Dangerous Eczema'
    },
    {
      "id": 85,
      "eNumber": "E312",
      "eName": 'Dodecyl Gallate',
      "Description": 'Antioxidants- other',
      "Example": 'Dangerous Eczema'
    },
    {
      "id": 86,
      "eNumber": "E320",
      "eName": 'Butylated Hydroxyanisole (BHA)',
      "Description": 'Antioxidants- other',
      "Example":
          'Dangerous May increase hyperactivity in affected children. Asthmatics sometimes react badly. Be cautious if you suffer from allergies or intolerances. May not be suitable for babies Cholesterol'
    },
    {
      "id": 87,
      "eNumber": "E321",
      "eName": '1 Butylated Hydroxytoluene (BHT)',
      "Description": 'Antioxidants- other',
      "Example": 'Dangerous Same as E320'
    },
    {
      "id": 88,
      "eNumber": "E322",
      "eName": 'Lecithins',
      "Description": 'Emulsifiers and Stabilisers',
      "Example": 'Safe'
    },
    {
      "id": 89,
      "eNumber": "E325",
      "eName": 'Sodium Lactate',
      "Description": 'Miscellaneous - Salts of Lactic Acid',
      "Example": 'Safe'
    },
    {
      "id": 90,
      "eNumber": "E326",
      "eName": 'Potassium Lactate',
      "Description": 'Miscellaneous - Salts of Lactic Acid',
      "Example": 'Safe'
    },
    {
      "id": 91,
      "eNumber": "E327",
      "eName": 'Calcium Lactate',
      "Description": 'Miscellaneous - Salts of Lactic Acid',
      "Example": 'Safe'
    },
    {
      "id": 92,
      "eNumber": "E330",
      "eName": 'Citric Acid',
      "Description": 'Miscellaneous - Citric Acid and its Salts',
      "Example": 'Cancer Intestine Upset'
    },
    {
      "id": 92,
      "eNumber": "E331",
      "eName": 'Sodium Citrates',
      "Description": 'Miscellaneous - Citric Acid and its Salts',
      "Example": 'Safe'
    },
    {
      "id": 92,
      "eNumber": "E332",
      "eName": 'Potassium Citrates',
      "Description": 'Miscellaneous - Citric Acid and its Salts',
      "Example": 'Safe'
    },
    {
      "id": 93,
      "eNumber": "E333",
      "eName": 'Calcium Citrates',
      "Description": 'Miscellaneous - Citric Acid and its Salts',
      "Example": 'Safe'
    },
    {
      "id": 93,
      "eNumber": "E334",
      "eName": 'Tartaric Acid',
      "Description": 'Miscellaneous - Tartaric Acid and its Salts',
      "Example": 'Dangerous Intestine Upset'
    },
    {
      "id": 94,
      "eNumber": "E335",
      "eName": 'Sodium Tartrate',
      "Description": 'Miscellaneous - Tartaric Acid and its Salts',
      "Example": 'Safe'
    },
    {
      "id": 94,
      "eNumber": "E336",
      "eName": 'Potassium Tartrate (Cream of Tartar)',
      "Description": 'Miscellaneous - Tartaric Acid and its Salts',
      "Example": 'Safe'
    },
    {
      "id": 95,
      "eNumber": "E337",
      "eName": 'Potassium Sodium Tartrate',
      "Description": 'Miscellaneous - Tartaric Acid and its Salts',
      "Example": 'Safe'
    },
    {
      "id": 96,
      "eNumber": "E338",
      "eName": 'Orthophosphoric Acid',
      "Description": 'Miscellaneous - Phosphoric Acid and its Salts',
      "Example": 'Dangerous Peptic Disorder'
    },
    {
      "id": 97,
      "eNumber": "E339",
      "eName": 'Sodium Phosphates',
      "Description": 'Miscellaneous - Phosphoric Acid and its Salts',
      "Example": 'Dangerous Peptic Disorder'
    },
    {
      "id": 98,
      "eNumber": "E340",
      "eName": 'Potassium Phosphates',
      "Description": 'Miscellaneous - Phosphoric Acid and its Salts',
      "Example": 'Dangerous Peptic Disorder'
    },
    {
      "id": 99,
      "eNumber": "E341",
      "eName": 'Calcium Phosphates',
      "Description": 'Miscellaneous - Phosphoric Acid and its Salts',
      "Example": 'Dangerous Peptic Disorder'
    },
    {
      "id": 100,
      "eNumber": "E400",
      "eName": 'Alginic Acid',
      "Description": 'Miscellaneous -Emulsifiers and Stabilisers - Alginates',
      "Example": 'Safe'
    },
    {
      "id": 101,
      "eNumber": "E401",
      "eName": 'Sodium Alginate',
      "Description": 'Miscellaneous -Emulsifiers and Stabilisers - Alginates',
      "Example": 'Safe'
    },
    {
      "id": 102,
      "eNumber": "E402",
      "eName": 'Potassium Alginate',
      "Description": 'Miscellaneous -Emulsifiers and Stabilisers - Alginates',
      "Example": 'Safe'
    },
    {
      "id": 104,
      "eNumber": "E403",
      "eName": 'Ammonium Alginate',
      "Description": 'Miscellaneous -Emulsifiers and Stabilisers - Alginates',
      "Example": 'Safe'
    },
    {
      "id": 105,
      "eNumber": "E404",
      "eName": 'Calcium Alginate',
      "Description": 'Miscellaneous -Emulsifiers and Stabilisers - Alginates',
      "Example": 'Safe'
    },
    {
      "id": 106,
      "eNumber": "E405",
      "eName": 'Propane-1,2-Diol Alginate',
      "Description": 'Miscellaneous -Emulsifiers and Stabilisers - Alginates',
      "Example": 'Safe'
    },
    {
      "id": 107,
      "eNumber": "E406",
      "eName": 'Agar',
      "Description": 'Emulsifiers and Stabilisers - other plant gums',
      "Example": 'Safe'
    },
    {
      "id": 108,
      "eNumber": "E407",
      "eName": 'Carrageenan',
      "Description": 'Emulsifiers and Stabilisers - other plant gums',
      "Example": 'Dangerous Peptic Disorder'
    },
    {
      "id": 109,
      "eNumber": "E410",
      "eName": 'Locust Bean Gum (Carob Gum)',
      "Description": 'Emulsifiers and Stabilisers - other plant gums',
      "Example": 'Safe'
    },
    {
      "id": 110,
      "eNumber": "E412",
      "eName": 'Guar Gum',
      "Description": 'Emulsifiers and Stabilisers - other plant gums',
      "Example": 'Safe'
    },
    {
      "id": 111,
      "eNumber": "E413",
      "eName": 'Tragacanth',
      "Description": 'Emulsifiers and Stabilisers - other plant gums',
      "Example":
          'Supsicious Be cautious if you suffer from allergies or intolerances.'
    },
    {
      "id": 112,
      "eNumber": "E414",
      "eName": 'Gum Acacia (Gum Arabic)',
      "Description": 'Emulsifiers and Stabilisers - other plant gums',
      "Example": 'Safe'
    },
    {
      "id": 113,
      "eNumber": "E415",
      "eName": 'Xanthan Gum',
      "Description": 'Emulsifiers and Stabilisers - other plant gums',
      "Example": 'Safe'
    },
    {
      "id": 114,
      "eNumber": "E420",
      "eName": 'Sorbitol',
      "Description": 'Sugar Alcohols',
      "Example": 'Safe'
    },
    {
      "id": 115,
      "eNumber": "E421",
      "eName": 'Mannitol',
      "Description": 'Sugar Alcohols',
      "Example": 'Safe'
    },
    {
      "id": 116,
      "eNumber": "E422",
      "eName": 'Glycerol',
      "Description": 'Sugar Alcohols',
      "Example": 'Safe'
    },
    {
      "id": 117,
      "eNumber": "E440a",
      "eName": 'Pectin',
      "Description": 'Emulsifiers and Stabilisers - Pectin and derivatives',
    },
    {
      "id": 118,
      "eNumber": "E440b",
      "eName": 'Amidated Pectin',
      "Description": 'Emulsifiers and Stabilisers - Pectin and derivatives',
    },
    {
      "id": 119,
      "eNumber": "E450a,b,c",
      "eName": 'Sodium and Potassium Phosphates and Polyphosphates',
      "Description": 'Miscellaneous',
      "Example": 'Dangerous Peptic Disorder'
    },
    {
      "id": 120,
      "eNumber": "E460",
      "eName": 'Microcrystalline / Powdered Cellulose',
      "Description": 'Emulsifiers and Stabilisers - Cellulose and derivatives',
    },
    {
      "id": 121,
      "eNumber": "E461",
      "eName": 'Methylcellulose',
      "Description": 'Emulsifiers and Stabilisers - Cellulose and derivatives',
      "Sideeffect": 'Dangerous Peptic Disorder'
    },
    {
      "id": 122,
      "eNumber": "E463",
      "eName": 'Hydroxypropylcellulose',
      "Description": 'Emulsifiers and Stabilisers – Cellulose and derivatives',
      "Sideeffect": 'Dangerous Peptic Disorder'
    },
    {
      "id": 123,
      "eNumber": "E464",
      "eName": 'Hydroxypropyl-Methylcellulose',
      "Description": 'Emulsifiers and Stabilisers – Cellulose and derivatives',
    },
    {
      "id": 124,
      "eNumber": "E465",
      "eName": 'Ethylmethylcellulose',
      "Description": 'Emulsifiers and Stabilisers – Cellulose and derivatives',
      " Sideeffect": 'Dangerous Peptic Disorder'
    },
    {
      "id": 125,
      "eNumber": "E466",
      "eName": 'Carboxymethylcellulose, Sodium Salt ',
      "Description": 'Emulsifiers and Stabilisers – Cellulose and derivatives',
      " Sideeffect": 'Dangerous Peptic Disorder'
    },
    {
      "id": 126,
      "eNumber": "E470",
      "eName": 'Sodium, Potassium and Calcium Salts of Fatty Acids',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
    },
    {
      "id": 127,
      "eNumber": "E471",
      "eName": 'Mono-and Diglycerides of Fatty Acids',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
      " Sideeffect": 'Safe'
    },
    {
      "id": 128,
      "eNumber": "E472",
      "eName": 'Various Esters of Mono-and Diglycerides of Fatty Acids',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
      " Sideeffect": 'Safe'
    },
    {
      "id": 129,
      "eNumber": "E473",
      "eName": 'Sucrose Esters of Fatty Acids',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
      " Sideeffect": 'Safe'
    },
    {
      "id": 130,
      "eNumber": "E474",
      "eName": 'Sucroglycerides ',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
      " Sideeffect": 'Safe'
    },
    {
      "id": 131,
      "eNumber": "E475",
      "eName": 'Polyglycerol Esters of Fatty Acids',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
      " Sideeffect": 'Safe '
    },
    {
      "id": 132,
      "eNumber": "E477",
      "eName": 'Propane-1,2-Diol Esters of Fatty Acids',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
      " Sideeffect": 'Supsicious'
    },
    {
      "id": 133,
      "eNumber": "E481",
      "eName": 'Sodium Stearoyl-2-Lactylate',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
    },
    {
      "id": 134,
      "eNumber": "E482",
      "eName": 'Calcium Stearoyl-2-Lactylate',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
    },
    {
      "id": 135,
      "eNumber": "E483",
      "eName": 'Stearyl Tartrate',
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
    },
    {
      "id": 136,
      "eNumber": "107",
      "eName": 'Yellow 2G',
      "Description": 'Colours - Yellow and Orange',
    },
    {
      "id": 137,
      "eNumber": "128",
      "eName": 'Red 2G',
      "Description": 'Colours - Red',
      " Sideeffect":
          'Supsicious May increase hyperactivity in affected children',
    },
    {
      "id": 138,
      "eNumber": "133",
      "eName": 'Brilliant Blue FCF',
      "Description": 'Colours - Blue',
      " Sideeffect":
          'Supsicious May increase hyperactivity in affected children.'
    },
    {
      "id": 139,
      "eNumber": "154",
      "eName": 'Brown FK',
      "Description": 'Colours - Brown and Black',
    },
    {
      "id": 140,
      "eNumber": "155",
      "eName": 'Brown HT',
      "Description": 'Colours - Brown and Black',
      " Sideeffect":
          'Supsicious May increase hyperactivity in affected children. Asthmatics sometimes react badly. Take care if you are sensitive to Aspirin. Be cautious if you suffer from allergies or intolerances.'
    },
    {
      "id": 141,
      "eNumber": "234",
      "eName": 'Nisin',
      "Description": 'Preservative - other',
    },
    {
      "id": 142,
      "eNumber": "262",
      "eName": 'Sodium Acetate',
      "Description": 'Miscellaneous – Acids and their Salts',
    },
    {
      "id": 143,
      "eNumber": "296",
      "eName": 'Malic Acid ',
      "Description": 'Miscellaneous – Acids and their Salts',
    },
    {
      "id": 144,
      "eNumber": "297",
      "eName": 'Fumaric Acid',
      "Description": 'Miscellaneous – Acids and their Salts',
    },
    {
      "id": 145,
      "eNumber": "350",
      "eName": 'Sodium Malate',
      "Description": 'Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 146,
      "eNumber": "351",
      "eName": 'Potassium Malate',
      "Description": ' Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 147,
      "eNumber": " 352 ",
      "eName": 'Calcium Malate ',
      "Description": ' Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 148,
      "eNumber": " 353 ",
      "eName": 'Metataric Acid',
      "Description": 'Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 149,
      "eNumber": "355",
      "eName": 'Adipic Acid',
      "Description": 'Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 150,
      "eNumber": "363",
      "eName": 'Succinic Acid',
      "Description": 'Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 151,
      "eNumber": "370",
      "eName": '1,4-Heptonolactane',
      "Description": 'Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 152,
      "eNumber": "375",
      "eName": 'Nicotinic Acid',
      "Description": ' Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 153,
      "eNumber": "380",
      "eName": 'Triammonium Citrate',
      "Description": ' Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 154,
      "eNumber": "381",
      "eName": 'Ammonium Ferric Citrate',
      "Description": ' Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 155,
      "eNumber": "385",
      "eName": 'Calcium Disodium EDTA',
      "Description": 'Miscellaneous - Salts of Malic Acid',
    },
    {
      "id": 156,
      "eNumber": "416",
      "eName": 'Karaya Gum',
      "Description": 'Emulsifiers and Stabilisers',
    },
    {
      "id": 157,
      "eNumber": "430",
      "eName": 'Polyoxyethane (8) Stearate',
      "Description": 'Emulsifiers and Stabilisers - Fatty Acid derivatives',
    },
    {
      "id": 158,
      "eNumber": "431",
      "eName": 'Polyoxyethane (40) Stearate',
      "Description": 'Emulsifiers and Stabilisers - Fatty Acid derivatives',
    },
    {
      "id": 159,
      "eNumber": "432",
      "eName": 'Polyoxyethane (20) Sorbitan / Polysorbate 20',
      "Description": ' Emulsifiers and Stabilisers - Fatty Acid',
    },
    {
      "id": 160,
      "eNumber": "432",
      "eName": 'Polyoxyethane (20) Sorbitan /Polysorbate 20',
      "Description": ' Emulsifiers and Stabilisers - Fatty Acidderivatives',
    },
    {
      "id": 161,
      "eNumber": "433",
      "eName": 'Polyoxyethane (20) Sorbitan Monooleate/ Polysorbate 80',
      "Description": 'Emulsifiers and Stabilisers - Fatty Acid derivatives',
    },
    {
      "id": 162,
      "eNumber": "434",
      "eName": 'Polyoxyethane (20) Sorbitan Monopalmitate / Polysorbate 40',
      "Description": 'Emulsifiers and Stabilisers - Fatty Acid derivatives',
    },
    {
      "id": 163,
      "eNumber": "435",
      "eName": 'Polyoxyethane (20) Sorbitan Monostearate / Polysorbate 60',
      "Description": 'Emulsifiers and Stabilisers - Fatty Acid derivatives',
    },
    {
      "id": 164,
      "eNumber": "436",
      "eName": "Polyoxyethane (20) Sorbitan Tristearate / Polysorbate 65",
      "Description": ' Emulsifiers and Stabilisers - Fatty Acid derivatives',
    },
    {
      "id": 165,
      "eNumber": "476",
      "eName": "Polyglycerol Esters of Polycondensed Esters of Caster Oil",
      "Description":
          'Emulsifiers and Stabilisers - salts or Esters of Fatty Acids',
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["eNumber"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // foregroundColor: Colors.transparent,
        title: Text('E- Number Search'),
        actions: [Icon(Icons.qr_code)],
        elevation: 0,
      ),
      drawer: DrawerWidget(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          Column(
            children: [
              Spacer(),
              SingleChildScrollView(
                child: Container(
                  height: 500,
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                              height: 80,
                              child: Image.asset('images/fast-food.png')),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(13.0),
                                    bottomLeft: Radius.circular(13.0),
                                    topLeft: Radius.circular(13.0),
                                    topRight: Radius.circular(13.0),
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 16, right: 16),
                                          child: TextField(
                                              focusNode: _focusNode,
                                              style: TextStyle(
                                                  fontFamily: 'WorkSans',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: primaryColor),
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                labelText: 'Search E-Numbers',
                                                border: InputBorder.none,
                                                helperStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: secondaryColor),
                                                labelStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  letterSpacing: 0.2,
                                                  color: Colors.black38,
                                                ),
                                              ),
                                              onChanged: (value) {
                                                index = value;
                                                _runFilter(value);
                                                setState(() {
                                                  realData = false;
                                                });
                                              })),
                                    ),
                                    SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: Icon(Icons.search,
                                          color: Colors.black45),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          realData
                              ? Expanded(
                                  child: StreamBuilder<List<E_numberModel>>(
                                    stream: readEnumbers(),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        final users = snapshot.data!;
                                        return ListView(
                                          children:
                                              users.map((buildUser)).toList(),
                                        );
                                      } else {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                    },
                                  ),
                                )
                              : Container(),
                          !realData
                              ?
                              // ? FutureBuilder<E_numberModel?>(
                              //     future: readUser(),
                              //     builder: (context, snapshot) {
                              //       if (snapshot.hasError) {
                              //         return Text('ERROR');
                              //       } else if (snapshot.hasData) {
                              //         final user = snapshot.data;
                              //         return user == null
                              //             ? Center(child: Text('No data'))
                              //             : buildUser(user);
                              //       } else {
                              //         return CircularProgressIndicator();
                              //       }
                              //     },
                              //   )

                              Expanded(
                                  child: _foundUsers.isNotEmpty
                                      ? ListView.builder(
                                          itemCount: _foundUsers.length,
                                          itemBuilder: (context, index) => Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                Radius.circular(10),
                                              )),
                                              elevation: 5,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 1,
                                                    color: secondaryColor,
                                                  ),
                                                  Stack(children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .push(
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (_) {
                                                            return E_NumberDetails(
                                                              _foundUsers[index]
                                                                      [
                                                                      "eNumber"]
                                                                  .toString(),
                                                              _foundUsers[index]
                                                                      ["eName"]
                                                                  .toString(),
                                                              _foundUsers[index]
                                                                      [
                                                                      "Description"]
                                                                  .toString(),
                                                              _foundUsers[index]
                                                                      [
                                                                      "Example"]
                                                                  .toString(),
                                                            );
                                                          }));
                                                        },
                                                        child: ListTile(
                                                          // leading: Text(
                                                          //   _foundUsers[index]
                                                          //           ["id"]
                                                          //       .toString(),
                                                          //   style:
                                                          //       const TextStyle(
                                                          //           fontSize:
                                                          //               24),
                                                          // ),
                                                          title: Text(
                                                            _foundUsers[index]
                                                                ['eNumber'],
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        24),
                                                          ),
                                                          // subtitle: Text(
                                                          //     '${_foundUsers[index]["Description"]}'),
                                                          subtitle: Text(
                                                              '${_foundUsers[index]["eName"]}'),

                                                          trailing: Icon(Icons
                                                              .arrow_forward_ios_rounded),
                                                        ),
                                                      ),
                                                    ),
                                                  ]),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    17,
                                                                    111,
                                                                    187),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
                                                          // color: Colors.green,
                                                          width: 400,
                                                          height: 5,
                                                          child: Container())
                                                    ],
                                                  ),
                                                ],
                                              )))
                                      : const Text(
                                          'No results found',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.black12),
                                        ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Powered by University of Vocational Technology',
                  style: TextStyle(color: Colors.black38),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildUser(E_numberModel e_numberModel) => Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(10),
      )),
      elevation: 5,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 1,
            color: secondaryColor,
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return E_NumberDetails(
                      e_numberModel.eNumber.toString(),
                      e_numberModel.eName.toString(),
                      e_numberModel.description.toString(),
                      e_numberModel.example.toString(),
                    );
                  }));
                },
                child: ListTile(
                  leading: Text(
                    e_numberModel.eNumber.toString().toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                  title: Text(e_numberModel.eName.toString()),
                  // subtitle: Text(
                  //     '${_foundUsers[index]["Description"]}'),
                  // subtitle: Text(e_numberModel.example.toString()),

                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 111, 187),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  // color: Colors.green,
                  width: 400,
                  height: 5,
                  child: Container())
            ],
          ),
        ],
      ));

  Stream<List<E_numberModel>> readEnumbers() => FirebaseFirestore.instance
      .collection('E_Numbers')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => E_numberModel.fromJson(doc.data()))
          .toList());

  Future<E_numberModel?> readUser() async {
    final docUert =
        FirebaseFirestore.instance.collection('E_Numbers').doc(index);

    final snapshot = await docUert.get();
    if (snapshot.exists) {
      return E_numberModel.fromJson(snapshot.data()!);
    }
  }
}
