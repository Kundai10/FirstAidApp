// a list of data containing first aid

class FirstAidList {
  String ailment;
  String description;
  String ailment_image_url;

  FirstAidList(this.ailment, this.description, this.ailment_image_url);
}

List<String?> post = [];

List<FirstAidList> firstaidList = [
  FirstAidList(
      "Animal Bites",
      "To care for a minor animal bite or claw wound, such as one that only breaks the skin, take these steps:\n Wash the wound thoroughly with soap and water.\n Apply an antibiotic cream or ointment and cover the bite with a clean bandage.\n Seek prompt medical care if:The wound is a deep puncture or the skin is badly torn, crushed or bleeding",
      'assets/animal_bite.png'),
  FirstAidList("Black Eye", "To care for a black eye take these steps:\n Apply a cold compress soon after the injury\n Apply warm and hot compresses\n Seek medical care right away.", 'assets/black_eye.png'),
  FirstAidList("Blisters", "To relieve blister related pain do the following:\n Apply an ointment such as petroleum jelly", 'assets/blisters.png'),
  FirstAidList("Bruising", "You can enhance bruise healing with a few simple steps:\n Elevate the bruised area above heart level if possible\n Apply an ice pack wrapped in a towel\n If bruised area is swelling apply a bandage.", 'assets/bruise.png'),
  FirstAidList("Burns", "Major burns need immediate emergency help. Minor burns can be treated with first aid.\n For minor burns\n Cool the affected area with running cold water for 10 minutes\n Don't pop the blisters\n Apply a loosely fitting gauze", 'assets/burns.png'),
  FirstAidList("Chemical Burns", "Seek emergency care for chemical burns.", 'assets/chemical_burn.png'),
  FirstAidList("Choking", "If you are alone and choking:\n Call your local emergency number immmediately\n And\n Place a fist slightly above your navel\n Grasp your fist with the other hand\n Bend over a hard surface\n Shove your fist inward and upward", 'assets/choking.png'),

  FirstAidList("Cuts and Scraps", "These guidelines can help you care for minor cuts and scrapes:\n Stop the bleeding by applying gentle pressure with a cloth\n Rinse the wound with water\n Apply an antibiotic or petroleum jelly\n Apply a bandage\n Call a doctor if you notce signs of infection", 'assets/sprain.png'),
  FirstAidList("Fainting", "If someone faints\n Position the person on his/her back\n If the person is breathing, raise the person's legs above heart level\n Loosen belts, shoes, or any constrictive clothing\n If the person isn't breathing call an emergency ambulance.", 'assets/fainting.png'),
  FirstAidList("Fever", "To treat a fever at home\n Drink plenty of fluids to stay hydrated\n Dress in lightweight clothing\n Use a light blanket if you have chills", 'assets/fever.png'),
  FirstAidList("Insects bites and stings", "Seek professional medical help if the insect bite causes serious side effects such as difficulty in breathing\n For mild insect bites and stings\n Move to a safe area to avoid more bites\n Wash the area with water\n Apply an ice pack to the area to reduce swelling", 'assets/insect.png'),
  FirstAidList("Motion Sickness", "To prevent motion sickness\n Don't smoke or sit near smokers when travelling\n Avoid strong odours\n Avoid greasy foods and alcohol\n Don't read while travelling or use electronic devices", 'assets/motion_sickness.png'),
  FirstAidList("Nosebleed", "To treat nosebleeds\n Sit upright and lean forward\n Gently blow your nose\n Pinch your nostrils shut\n If re-bleeding occurs, repeat those steps again", 'assets/nosebleed.png'),
  FirstAidList("Sprain", "To treat sprains\n Rest the injured part\n Ice the area by using a cold pack\n Compress the area with a bandage\n Elevate the injured limb to prevent swelling", 'assets/sprain.png'),
  FirstAidList("Sunburn", "If you are sunburned\n Cool the skin by taking a cool bathe\n Apply an aloe vera lotion to soothe the skin\n Drink water to stay hydarted\n Don't try to pop the blisters", 'assets/sunburn.png'),
  FirstAidList("Toothache", "Until you see your dentist, try this to treat a tooth-ache\n Rinse your mouth with warm water\n Use dental floss to remove any food particles between your teeth\n Consider taking over the counter pain killers to dull the pain", 'assets/tooth_ache.png'),
];

List<FirstAidList> displayedList = List.from(firstaidList);
