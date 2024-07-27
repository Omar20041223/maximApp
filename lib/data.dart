  import 'models/Categories.dart';
  import 'models/CreatedEmails.dart';
  import 'models/Meals.dart';
  import 'models/PurchasedMeals.dart';

  List<CreatedEmails> accounts = [
    CreatedEmails(fullName: "a", email: "a", password: "a"),
  ];
  List<PurchasedMeals> purchasedMeal = [];
  List<Categories> categories =  [
    Categories(name: "بيتزا ماكسيم", image: "images/pizza.jpg", id: "c0"),
    Categories(name: "أطباق اللحوم", image: "images/meatDishes.jpg", id: "c2"),
    Categories(name: "أطباق الدجاج", image: "images/chicken.jpg", id: "c3"),
    Categories(name: "شواية مكسيم", image: "images/grilled.jpg", id: "c4"),
    Categories(name: "اطباق مشتعلة", image: "images/fajita.jpg", id: "c5"),
    Categories(name: "سندونشات", image: "images/sandwich.jpg", id: "c6"),
    Categories(name: "الركن الشرقى", image: "images/elroknElsharque.jpg", id: "c7"),
    Categories(name: "المقبلات", image: "images/appitezer.jpg", id: "c8"),
    Categories(name: "الحساء", image: "images/soups.jpg", id: "c9"),
    Categories(name: "السلطات", image: "images/salads.jpg", id: "c10"),
    Categories(name: "المعجنات", image: "images/pasta.jpg", id: "c11"),
    Categories(name: "كافيه مكسيم", image: "images/glass-cola-with-ice-cubes.jpg", id: "c12"),
  ];
  List<Meal> meals = [
    Meal(id: "m1", name: "مارجريتا", image: "images/download.jpg", CategorieNum: "c0", salary: "100", descripiton: "جبنه موتزريلا + جبنه رومى + فلفل الوان + زيتون"),
    Meal(id: "m2", name: "كواتروا فورماج", image: "images/download2.jpeg", CategorieNum: "c0", salary: "145", descripiton: "جبنه موتزريلا + جبنه رومى + جبنه فلامنك + جبنه شيدر + فلفل الوان "),
    Meal(id: "m3", name: "خضراوات", image: "images/download3.jpeg", CategorieNum: "c0", salary: "145", descripiton: "جبنه موتزريلا + بصل + مشروم + فلفل الوان + زيتون"),
    Meal(id: "m4", name: "سوبر كرانشى", image: "images/download4.jpeg", CategorieNum: "c0", salary: "145", descripiton: "قطع تشيكن ستربس سبايسى + شرائح الرومى المدخن + موتزريلا"),
    Meal(id: "m5", name: "بيتزا رانش كرسبى شريمب", image: "images/download5.jpeg", CategorieNum: "c0", salary: "185", descripiton: "جمبرى كريسبى + صوص رانش + فلفل هاليبينو + موتزريلا"),
    Meal(id: "m6", name: "بيتزا رانش سي فود", image: "images/download7.jpeg", CategorieNum: "c0", salary: "180", descripiton: "جبنة موتزرلا + جمبرى + كابوريا + كاليمارى + فلفل + زيتون + صوص الرانش"),
    Meal(id: "m7", name: "بيتزا رانش جمبرى", image: "images/download6.jpeg", CategorieNum: "c0", salary: "165", descripiton: "جمبرى + جبنه موتزرلا + فلفل الوان + صوص الرانش"),
    Meal(id: "m8", name: "بيتزا رانش تشيكن", image: "images/pizzeRansh.jpg", CategorieNum: "c0", salary: "145", descripiton: "قطع الدجاج متبله بخلطة مكسيم + جبنه موتزرلا + صوص الرانش"),
    Meal(id: "m9", name: "تشيكن ريحان", image: "images/rehan.jpg", CategorieNum: "c0", salary: "145", descripiton: "قطع الدجاج متبله بخلطة الريحان + جبنه موتزرلا + زيتون + فلفل الوان"),
    Meal(id: "m10", name: "بيف هاوس", image: "images/BeafHouse.jpg", CategorieNum: "c0", salary: "155", descripiton: "لحم مفروم + سجق شرقى + جبنه موتزرلا + مشروم + بيبيرونى"),
    Meal(id: "m11", name: "سجق شرقى", image: "images/pizzaSogaSharky.jpg", CategorieNum: "c0", salary: "145", descripiton: "لحم بقري بالتوابل الشرقى +  جبنه موتزرلا + بصل + فلفل"),
    Meal(id: "m12", name: "فاهيتا فراخ", image: "images/download8.jpeg", CategorieNum: "c0", salary: "145", descripiton: "قطع دجاج متبله بصوص المكسيكان + فلفل + جبنه موتزرلا + بصل + زيتون"),
    Meal(id: "m13", name: "ستار سوبريم", image: "images/PizzaStarSuper.jpg", CategorieNum: "c0", salary: "145", descripiton: "فراخ + هوت دوج + جبنه موتزرلا + بسطرمه"),
    Meal(id: "m14", name: "ستيك هاوس", image: "images/download9.jpeg", CategorieNum: "c0", salary: "160", descripiton: "لحم ستيك مشوي على الفحم + جبنه موتزرلا "),
    Meal(id: "m15", name: "سوسيس", image: "images/download10.jpeg", CategorieNum: "c0", salary: "145", descripiton: "قطع سوسيس + جبنه موتزرلا + طماطم"),
    Meal(id: "m16", name: "جمبريكا", image: "images/download11.jpeg", CategorieNum: "c0", salary: "160", descripiton: "جمبري + جبنه موتزرلا + فلفل الوان"),
    Meal(id: "m17", name: "فروتا دى مارى", image: "images/download12.jpeg", CategorieNum: "c0", salary: "165", descripiton: "جمبرى +  كابوريا + كاليمارى + جبنه موتزرلا + فلفل + زيتون"),
    Meal(id: "m18", name: "تونلى", image: "images/download13.jpeg", CategorieNum: "c0", salary: "145", descripiton: "تونة + جبنه موتزرلا + زيتون + بصل"),
    Meal(id: "m19", name: "أنشوجيان", image: "images/download14.jpeg", CategorieNum: "c0", salary: "145", descripiton: "أنشوجة + جبنه موتزرلا + فلفل "),
    Meal(id: "m20", name: "دندى", image: "images/download15.jpg", CategorieNum: "c0", salary: "145", descripiton: "شرائح ديك رومى مدخن + جبنه موتزرلا + مشروم"),
    Meal(id: "m21", name: "بسطرمان", image: "images/download16.jpeg", CategorieNum: "c0", salary: "145", descripiton: "بسطرمة + جبنه موتزرلا +  طماطم "),
    Meal(id: "m22", name: "بيبيرونى", image: "images/download17.jpeg", CategorieNum: "c0", salary: "145", descripiton: "بيبيرونى + جبنه موتزرلا +  زيتون "),
    Meal(id: "m23", name: "شاورما فراخ", image: "images/download18.jpeg", CategorieNum: "c0", salary: "145", descripiton: "قطع شاورما فراخ + جبنه موتزرلا "),
    Meal(id: "m24", name: "شاورما لحم", image: "images/download19.jpeg", CategorieNum: "c0", salary: "145", descripiton: "قطع شاورما لحم + جبنه موتزرلا "),
    Meal(id: "m25", name: "تشيكن مكسيم", image: "images/chikenmaxim.jpg", CategorieNum: "c0", salary: "145", descripiton: "قطع دجاج متبله بخلطة مكسيم + جبنه موتزرلا "),
    Meal(id: "m26", name: "صيامى", image: "images/download20.jpeg", CategorieNum: "c0", salary: "95", descripiton: "خضراوات ومشرم بدون جبنة "),
    Meal(id: "m27", name: "بيف مكسيم بالجبنه", image: "images/download21.jpeg", CategorieNum: "c2", salary: "365", descripiton: "تقدم مع صوص الكريمة مغطى بطبقه من الموتزريلا"),
    Meal(id: "m28", name: "فيليه ريكفورد", image: "images/download22.jpeg", CategorieNum: "c2", salary: "365", descripiton: "تقدم مع صوص الجبنه الريكفورد والأرز والخضار السوتيه"),
    Meal(id: "m29", name: "فيليه ستيك مشروم", image: "images/StickMashrom.jpg", CategorieNum: "c2", salary: "365", descripiton: "تقدم مع صوص المشروم والأرز والسوتيه"),
    Meal(id: "m30", name: "بيف بيكاتا", image: "images/download23.jpeg", CategorieNum: "c2", salary: "365", descripiton: "تقدم مع الصوص البنى والأرز والسوتيه"),
    Meal(id: "m31", name: "اسكالوب بانيه", image: "images/skalopbanih.jpg", CategorieNum: "c2", salary: "365", descripiton: "تقدم مع الأسباجيتى والبطاطس"),
    Meal(id: "m32", name: "تورنيدو ماكسيم", image: "images/download24.jpeg", CategorieNum: "c2", salary: "365", descripiton: "قطعة لحم مشويه على الفحم بصوص المشروم"),
    Meal(id: "m33", name: "موزه ضانى", image: "images/MozaDanay.jpg", CategorieNum: "c2", salary: "395", descripiton: "تقدم مع الفته المصريه"),
    Meal(id: "m34", name: "أوزى مشوى", image: "images/download25.jpg", CategorieNum: "c2", salary: "410", descripiton: "قطعة لحمه ضانى مشويه و أرز بسمتى"),
    Meal(id: "m35", name: "تشيكن بريانى", image: "images/download26.jpeg", CategorieNum: "c3", salary: "280", descripiton: "قطع دجاج و أرز بريانى"),
    Meal(id: "m36", name: "تشيكن باربيكيو", image: "images/chickBarbiqu.jpg", CategorieNum: "c3", salary: "280", descripiton: "قطع صدور متبله بصوص الباربكيو و أرز و خضار سوتيه و بطاطس"),
    Meal(id: "m37", name: "فيليه تشيكن مشروم", image: "images/download27.jpeg", CategorieNum: "c3", salary: "280", descripiton: "تقدم مع الصوص البنى والأرز والسوتيه"),
    Meal(id: "m38", name: "تشيكن بيكاتا", image: "images/download28.jpeg", CategorieNum: "c3", salary: "280", descripiton: "تقدم مع الصوص الأبيض والأرز والسوتيه"),
    Meal(id: "m39", name: "تشكين بانيه", image: "images/download29.jpeg", CategorieNum: "c3", salary: "280", descripiton: "تقدم مع الأسباجيتى والبطاطس"),
    Meal(id: "m40", name: "تشكين مكسيم", image: "images/chikenmaxim.jpg", CategorieNum: "c3", salary: "280", descripiton: "تقدم مع صوص مكسيم والأرز والسوتيه"),
    Meal(id: "m41", name: "تشكين كوردن بلو", image: "images/download30.jpeg", CategorieNum: "c3", salary: "295", descripiton: "صدور دجاج محشيه بخلطة مكسيم تقدم مع الأسباجيتى والبطاطس"),
    Meal(id: "m42", name: "تشيكن تندورى", image: "images/chikenTndory.jpg", CategorieNum: "c3", salary: "295", descripiton: "قطع صدور الدجاج المحليه متبله بعناية مشوية على اللهب تقدم مع الأسباجيتى"),
    Meal(id: "m43", name: "تشيكن فرساى", image: "images/download31.jpeg", CategorieNum: "c3", salary: "295", descripiton: "صدور دجاج محشيه بالجبنة والاعشاب والبسطرمة + صوص كريمة + أرز أبيض + بوم فريت"),
    Meal(id: "m44", name: "شيش طاووق", image: "images/shishTawwok.jpg", CategorieNum: "c3", salary: "295", descripiton: "تقدم مع الأسباجيتى والبطاطس"),
    Meal(id: "m45", name: "تشيكن بوبيت", image: "images/chikenPobit.jpg", CategorieNum: "c3", salary: "295", descripiton: "رول الدجاج المحشو باللحم المفروم"),
    Meal(id: "m46", name: "وجبة حمام محشى او محمر", image: "images/hamam.jpg", CategorieNum: "c4", salary: "165", descripiton: ""),
    Meal(id: "m47", name: "نص فرخة مشوية مسحب", image: "images/nosFar5aMashwia.jpg", CategorieNum: "c4", salary: "190", descripiton: "أرز بسمتى و طحينه"),
    Meal(id: "m48", name: "فرخة مشوية", image: "images/nosFar5aMashwia.jpg", CategorieNum: "c4", salary: "300", descripiton: ""),
    Meal(id: "m49", name: "فرخة شيش", image: "images/download32.jpeg", CategorieNum: "c4", salary: "315", descripiton: ""),
    Meal(id: "m50", name: "شواية مكسيم", image: "images/shwaia.jpg", CategorieNum: "c4", salary: "265", descripiton: "2 كفته , 1 كباب , 1 شيش , قطعة تشيكن جريل , أرز , طحينه"),
    Meal(id: "m51", name: "ماكس جريل", image: "images/mixgril.jpg", CategorieNum: "c4", salary: "365", descripiton: ""),
    Meal(id: "m52", name: "اضافة فرده حمام مشوى او محمر", image: "images/download33.jpeg", CategorieNum: "c4", salary: "150", descripiton: ""),
    Meal(id: "m53", name: "برسيون سجق ضانى", image: "images/download34.jpeg", CategorieNum: "c4", salary: "225", descripiton: "مشوى على الفحم"),
    Meal(id: "m54", name: "برسيون كفته", image: "images/brisonkofta.jpg", CategorieNum: "c4", salary: "245", descripiton: ""),
    Meal(id: "m55", name: "برسيون طرب", image: "images/brisionTrb.jpg", CategorieNum: "c4", salary: "260", descripiton: ""),
    Meal(id: "m56", name: "برسيون مشكل", image: "images/brisonmeshakel.jpg", CategorieNum: "c4", salary: "300", descripiton: ""),
    Meal(id: "m57", name: "برسيون ريش", image: "images/download35.jpeg", CategorieNum: "c4", salary: "335", descripiton: ""),
    Meal(id: "m58", name: "كيلو سجق ضانى", image: "images/download36.jpeg", CategorieNum: "c4", salary: "660", descripiton: " مشوى على الفحم"),
    Meal(id: "m59", name: "كيلو كفته", image: "images/download37.jpeg", CategorieNum: "c4", salary: "705", descripiton: ""),
    Meal(id: "m60", name: "كيلو طرب", image: "images/tarb.jpg", CategorieNum: "c4", salary: "755", descripiton: ""),
    Meal(id: "m61", name: "كيلو مشكل", image: "images/download38.jpeg", CategorieNum: "c4", salary: "875", descripiton: ""),
    Meal(id: "m62", name: "كيلو ريش", image: "images/rish.jpg", CategorieNum: "c4", salary: "980", descripiton: ""),
    Meal(id: "m63", name: "تشيكن جريل", image: "images/chikenGirll.jpg", CategorieNum: "c5", salary: "265", descripiton: ""),
    Meal(id: "m64", name: "فاهيتا فراخ", image: "images/pizzeFahitaFra7.jpg", CategorieNum: "c5", salary: "300", descripiton: ""),
    Meal(id: "m65", name: "فاهيتا لحمة", image: "images/FahitaLa7ma.jpg", CategorieNum: "c5", salary: "365", descripiton: ""),
    Meal(id: "m66", name: "ستيك جريل", image: "images/StikGrill.jpg", CategorieNum: "c5", salary: "365", descripiton: ""),
    Meal(id: "m67", name: "تشيكن بانيه", image: "images/download39.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m68", name: "سجق شرقى", image: "images/download40.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m69", name: "شيش طاووق", image: "images/shishTawwok.jpg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m70", name: "كفته", image: "images/download41.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m71", name: "كفته سوري", image: "images/download42.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m72", name: "كبده أسكندرانى", image: "images/kebda.jpg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m73", name: "تشيكن جريل", image: "images/chikenGirll.jpg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m74", name: "شاورما فراخ", image: "images/download43.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m75", name: "شاورما لحم", image: "images/download44.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m76", name: "فاهيتا فراخ", image: "images/chikenFahita.jpg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m77", name: "هوت دوج", image: "images/download45.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m78", name: "شاورما سورى", image: "images/download46.jpeg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m79", name: "تشيكن باربيكيو", image: "images/chickBarbiqu.jpg", CategorieNum: "c6", salary: "105", descripiton: ""),
    Meal(id: "m80", name: "كوردن بلو", image: "images/kordenBlue.png", CategorieNum: "c6", salary: "110", descripiton: ""),
    Meal(id: "m81", name: "تشيكن تندورى", image: "images/chikenTndory.jpg", CategorieNum: "c6", salary: "110", descripiton: ""),
    Meal(id: "m82", name: "تشيكن زنجر كريسبى", image: "images/download47.jpeg", CategorieNum: "c6", salary: "110", descripiton: ""),
    Meal(id: "m83", name: "اسكالوب بانيه", image: "images/skalopbanih.jpg", CategorieNum: "c6", salary: "115", descripiton: ""),
    Meal(id: "m84", name: "فاهيتا لحم", image: "images/FahitaLa7ma.jpg", CategorieNum: "c6", salary: "115", descripiton: ""),
    Meal(id: "m85", name: "تشيز بيف ستيك ", image: "images/download48.jpeg", CategorieNum: "c6", salary: "115", descripiton: ""),
    Meal(id: "m86", name: "طرب", image: "images/tarb.jpg", CategorieNum: "c6", salary: "115", descripiton: ""),
    Meal(id: "m87", name: "ملوخيه ساده", image: "images/molo5ya.jpg", CategorieNum: "c7", salary: "70", descripiton: ""),
    Meal(id: "m88", name: "محاشى مشكل", image: "images/mahshy.jpg", CategorieNum: "c7", salary: "105", descripiton: "بذنجان - كوسة - فلفل - ورق عنب - ممبار "),
    Meal(id: "m89", name: "طلب رقاق", image: "images/rkak.jpg", CategorieNum: "c7", salary: "105", descripiton: "طبقات رقاق باللحمه المفرومه والزبده البلدى"),
    Meal(id: "m90", name: "ممبار", image: "images/mombar.jpg", CategorieNum: "c7", salary: "105", descripiton: "قطع الممبار البقرى بحشو الارز"),
    Meal(id: "m91", name: "شوربه كوارع", image: "images/shorbaKwar3.jpg", CategorieNum: "c7", salary: "120", descripiton: "قطع الكوارع المخليه مع الشوربه"),
    Meal(id: "m92", name: "حوواشى", image: "images/7awwshy.jpg", CategorieNum: "c7", salary: "115", descripiton: "لحمه ضانى بلدى بالتدبيله الشرقيه"),
    Meal(id: "m93", name: "فتة شاورما فراخ", image: "images/download49.jpeg", CategorieNum: "c7", salary: "215", descripiton: "تقدم باختيارك من الارز الابيض او البسمتى و خبز محمص او عيش الفته المصرى"),
    Meal(id: "m94", name: "كبسة فراخ", image: "images/download50.jpeg", CategorieNum: "c7", salary: "250", descripiton: "نص فرخه تقدم مع الارز الكبسه"),
    Meal(id: "m95", name: "ملوخية فراخ", image: "images/molokia.jpg", CategorieNum: "c7", salary: "220", descripiton: "نص فرخه محمره و ملوخيه تقدم مع الارز الابيض"),
    Meal(id: "m96", name: "فتة شاورما لحمة", image: "images/download51.jpeg", CategorieNum: "c7", salary: "220", descripiton: "تقدم باختيارك من الارز الابيض او البسمتى و خبز محمص او عيش الفته المصرى"),
    Meal(id: "m97", name: "فتة كوارع", image: "images/FataKwar3.jpg", CategorieNum: "c7", salary: "240", descripiton: "قطع الكوارع المخليه بالصوص تقدم مع الفته المصرى "),
    Meal(id: "m98", name: "كوارع ورق عنب", image: "images/kwar3.jpg", CategorieNum: "c7", salary: "265", descripiton: " قطع الكوارع المخليه تقدم مع ورق العنب"),
    Meal(id: "m99", name: "طاجن باميه باللحمة", image: "images/Bamia.jpg", CategorieNum: "c7", salary: "275", descripiton: "باميه باللحم البقرى والتسبيكه المصرى تقدم مع الارز"),
    Meal(id: "m100", name: "طاجن خضار مشكل باللحمة", image: "images/khodarbelL7ma.jpg", CategorieNum: "c7", salary: "275", descripiton: "لحم بقرى - خضار مشكل - صوص طماطم تقدم مع الارز الابيض"),
    Meal(id: "m101", name: "طاجن لحمة بالطاطس", image: "images/batats.jpg", CategorieNum: "c7", salary: "275", descripiton: "لحم بقرى - بطاطس  - صوص طماطم تقدم مع الارز الابيض"),
    Meal(id: "m102", name: "طاجن عكاوى", image: "images/3akawy.jpg", CategorieNum: "c7", salary: "275", descripiton: "قطع العكاوى مع البطاطس والصوص البنى تقدم مع الارز"),
    Meal(id: "m103", name: "طاجن فتة لحمة محمره", image: "images/download52.jpeg", CategorieNum: "c7", salary: "305", descripiton: "لحم بقرى محمر يقدم مع الفته المصرى"),
    Meal(id: "m104", name: "ملوخيه لحم", image: "images/download53.jpeg", CategorieNum: "c7", salary: "305", descripiton: "لحم بقرى - ملوخيه تقدم مع الارز الابيض"),
    Meal(id: "m105", name: "طاجن عكاوى ورق عنب", image: "images/3akawy.jpg", CategorieNum: "c7", salary: "305", descripiton: "قطع العكاوى البقرى تقدم مع ورق العنب"),
    Meal(id: "m106", name: "طاجن كباب حله", image: "images/download54.jpeg", CategorieNum: "c7", salary: "305", descripiton: "لحم بقرى + صوص بنى تقدم مع الارز الابيض"),
    Meal(id: "m107", name: "طاجن ورق عنب باللحمة", image: "images/download55.jpeg", CategorieNum: "c7", salary: "305", descripiton: "لحم بقرى محمر يقدم مع ورق العنب"),
    Meal(id: "m108", name: "كبده مشويه", image: "images/kebdaMshwia.jpg", CategorieNum: "c7", salary: "310", descripiton: "قطع كبده ضانى بلدى "),
    Meal(id: "m109", name: " كبسه لحم", image: "images/kapsaLa7ma.jpg", CategorieNum: "c7", salary: "310", descripiton: "لحم بقرى يقدم مع الارز الكبسه"),
    Meal(id: "m110", name: "بط شرقى", image: "images/download56.jpeg", CategorieNum: "c7", salary: "330", descripiton: "نص بطة تقدم مع الارز الخلطه والخضار السوتيه"),
    Meal(id: "m111", name: "بوم فريت", image: "images/download57.jpeg", CategorieNum: "c8", salary: "39", descripiton: ""),
    Meal(id: "m112", name: "خبر بالثوم", image: "images/download58.jpeg", CategorieNum: "c8", salary: "45", descripiton: ""),
    Meal(id: "m113", name: "حلقات بصل", image: "images/download59.jpeg", CategorieNum: "c8", salary: "55", descripiton: ""),
    Meal(id: "m114", name: "سبرنج رولز", image: "images/download60.jpeg", CategorieNum: "c8", salary: "60", descripiton: ""),
    Meal(id: "m115", name: "ورق عنب", image: "images/download61.jpeg", CategorieNum: "c8", salary: "60", descripiton: ""),
    Meal(id: "m116", name: "سمبوسه لحم", image: "images/download62.jpeg", CategorieNum: "c8", salary: "60", descripiton: ""),
    Meal(id: "m117", name: "سمبوسه جبنه", image: "images/download63.jpeg", CategorieNum: "c8", salary: "60", descripiton: ""),
    Meal(id: "m118", name: "كوبيبه شامى", image: "images/download64.jpeg", CategorieNum: "c8", salary: "75", descripiton: ""),
    Meal(id: "m119", name: "مكسيم فرايز", image: "images/fraiz.jpg", CategorieNum: "c8", salary: "99", descripiton: ""),
    Meal(id: "m120", name: "مقبلات مكسيم", image: "images/mokabelat.jpg", CategorieNum: "c8", salary: "145", descripiton: ""),
    Meal(id: "m121", name: "مقبلات شرقى", image: "images/mokapelat.jpg", CategorieNum: "c8", salary: "255", descripiton: "حوواشى - ممبار - سمبوسه لحم - سمبسوسه جبنه - كبيبه - ورق عنب"),
    Meal(id: "m122", name: "لسان عصفور", image: "images/download65.jpeg", CategorieNum: "c9", salary: "39", descripiton: ""),
    Meal(id: "m123", name: "شوربه طماطم", image: "images/download66.jpeg", CategorieNum: "c9", salary: "55", descripiton: ""),
    Meal(id: "m124", name: "عدس", image: "images/download67.jpeg", CategorieNum: "c9", salary: "55", descripiton: ""),
    Meal(id: "m125", name: "شوربه خضار", image: "images/download68.jpeg", CategorieNum: "c9", salary: "60", descripiton: ""),
    Meal(id: "m126", name: "كريمه فراخ", image: "images/download69.jpeg", CategorieNum: "c9", salary: "70", descripiton: ""),
    Meal(id: "m127", name: "خضار سوتيه", image: "images/download70.jpeg", CategorieNum: "c9", salary: "70", descripiton: ""),
    Meal(id: "m128", name: "اى صنف سلطه", image: "images/salads.jpg", CategorieNum: "c10", salary: "25", descripiton: ""),
    Meal(id: "m129", name: "مكس سلطات", image: "images/download71.jpeg", CategorieNum: "c10", salary: "75", descripiton: "اختيارك من بوفيه سلطات مكسيم مره واحده"),
    Meal(id: "m130", name: "أرز أبيض", image: "images/download72.jpg", CategorieNum: "c11", salary: "39", descripiton: ""),
    Meal(id: "m131", name: "أرز خلطه", image: "images/download73.jpeg", CategorieNum: "c11", salary: "59", descripiton: ""),
    Meal(id: "m132", name: "أرز بسمتى", image: "images/download74.jpg", CategorieNum: "c11", salary: "65", descripiton: ""),
    Meal(id: "m133", name: "استباجيتى نابوليتان", image: "images/download75.jpeg", CategorieNum: "c11", salary: "59", descripiton: "اسباجيتى - صوص طمام"),
    Meal(id: "m134", name: "فتة مصرى", image: "images/download76.jpeg", CategorieNum: "c11", salary: "70", descripiton: ""),
    Meal(id: "m135", name: "بنا أربياتا", image: "images/download77.jpeg", CategorieNum: "c11", salary: "75", descripiton: "مكرونه بنا - صوص احمر سبايصى"),
    Meal(id: "m136", name: "مكرونة فرن", image: "images/makaronaForn.jpg", CategorieNum: "c11", salary: "99", descripiton: ""),
    Meal(id: "m137", name: "مكرونة نجرسكو", image: "images/download78.jpeg", CategorieNum: "c11", salary: "109", descripiton: "فيوتنشينى - فراخ -صوص كريمة- جبنه موتزرلا "),
    Meal(id: "m138", name: "اسباجيتى بولونيز", image: "images/boloniez.jpg", CategorieNum: "c11", salary: "115", descripiton: "اسباجيتى - صوص لحمة مفرومة"),
    Meal(id: "m139", name: "كنالونى", image: "images/kanalony.jpg", CategorieNum: "c11", salary: "115", descripiton: ""),
    Meal(id: "m140", name: "لازانيا", image: "images/Lazania.png", CategorieNum: "c11", salary: "115", descripiton: ""),
    Meal(id: "m141", name: "بنا تشيكن بستو", image: "images/download79.jpg", CategorieNum: "c11", salary: "135", descripiton: "مكرونة - قطع فراخ - صوص ريحان"),
    Meal(id: "m142", name: "بنا الفريدو", image: "images/Alfirado.jpg", CategorieNum: "c11", salary: "140", descripiton: "مكرونة بنا - فراخ - مشروم - فلفل الوان - زيتون - جبنه رومى"),
    Meal(id: "m143", name: "اسباجيتى كرات لحم", image: "images/kratl7m.jpg", CategorieNum: "c11", salary: "170", descripiton: ""),
    Meal(id: "m144", name: "باستا مكسيم", image: "images/download80.jpeg", CategorieNum: "c11", salary: "170", descripiton: "مكرونة - قطع لحم - فلفل الوان - صوص بنى - مشروم"),
    Meal(id: "m145", name: "مياه معدنيه", image: "images/download81.jpeg", CategorieNum: "c12", salary: "12", descripiton: ""),
    Meal(id: "m146", name: "شاى", image: "images/download82.jpeg", CategorieNum: "c12", salary: "30", descripiton: ""),
    Meal(id: "m147", name: "قهوة", image: "images/download83.jpeg", CategorieNum: "c12", salary: "35", descripiton: ""),
    Meal(id: "m148", name: "كابتشينو", image: "images/download84.jpeg", CategorieNum: "c12", salary: "45", descripiton: ""),
    Meal(id: "m149", name: "مياه غازيه", image: "images/download89.jpeg", CategorieNum: "c12", salary: "20", descripiton: ""),
    Meal(id: "m150", name: "بريل - فيروز - شويبس", image: "images/download85.jpeg", CategorieNum: "c12", salary: "25", descripiton: ""),
    Meal(id: "m151", name: "كريم كراميل", image: "images/download86.jpeg", CategorieNum: "c12", salary: "45", descripiton: ""),
    Meal(id: "m152", name: "عصائر الموسم", image: "images/download87.jpeg", CategorieNum: "c12", salary: "50", descripiton: ""),
    Meal(id: "m153", name: "ام على - ايس كريم", image: "images/download88.jpeg", CategorieNum: "c12", salary: "50", descripiton:""),
  ];
