import 'package:mackshnack/app/models/product/product.dart';

class HomeController {
  final List<Product> _products = [
    Product(
        name: 'Молочный Коктейль Папайя-манго',
        price: 139,
        image: 'assets/images/papayamango.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Кола',
        price: 95,
        image: 'assets/images/cola.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Апельсин',
        price: 95,
        image: 'assets/images/apelsin.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Лимон-Лайм',
        price: 95,
        image: 'assets/images/limonlaim.png',
        category: 'Drinks'),
    Product(
        name: 'Добрый Кола без сахара',
        price: 95,
        image: 'assets/images/bezsahara.png',
        category: 'Drinks'),
    Product(
        name: 'Молочный Коктейль Клубничный',
        price: 99,
        image: 'assets/images/klubnika.png',
        category: 'Drinks'),
    Product(
        name: 'Молочный Коктейль Ванильный',
        price: 99,
        image: 'assets/images/vanil.png',
        category: 'Drinks'),
    Product(
        name: 'Артезианская Вода Черноголовка негазированная',
        price: 99,
        image: 'assets/images/voda.png',
        category: 'Drinks'),
    Product(
        name: 'Липтон Зеленый',
        price: 95,
        image: 'assets/images/zeleniy.png',
        category: 'Drinks'),
    Product(
        name: 'Липтон Лимон',
        price: 95,
        image: 'assets/images/limon.png',
        category: 'Drinks'),
    Product(
        name: 'Капучино',
        price: 79,
        image: 'assets/images/capuchino.png',
        category: 'Drinks'),
    Product(
        name: 'Латте',
        price: 119,
        image: 'assets/images/latte.png',
        category: 'Drinks'),
    Product(
        name: 'Американо',
        price: 75,
        image: 'assets/images/americano.png',
        category: 'Drinks'),
    Product(
        name: 'Чай Черный Эрл Грей',
        price: 65,
        image: 'assets/images/erlgrei.png',
        category: 'Drinks'),
    Product(
        name: 'Чай черный',
        price: 65,
        image: 'assets/images/cherni.png',
        category: 'Drinks'),
    Product(
        name: 'Чай зеленый',
        price: 65,
        image: 'assets/images/chaizelen.png',
        category: 'Drinks'),
    Product(
        name: 'Супер Бокс Для Компании',
        price: 553,
        image: 'assets/images/bigbox.png',
        category: 'Box'),
    Product(
        name: 'Супер Бокс Для Тебя',
        price: 284,
        image: 'assets/images/boxforyou.png',
        category: 'Box'),
    Product(
        name: 'Гранд Пикант Комбо',
        price: 353,
        image: 'assets/images/kombograndpikant.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Спешиал Барбекю Бекон Комбо',
        price: 469,
        image: 'assets/images/kombobigspeshialbarbeq.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Чикен Бургер Грибной Комбо',
        price: 421,
        image: 'assets/images/kombobigchickengrib.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Чикен Бургер Комбо',
        price: 404,
        image: 'assets/images/kombobigchicken.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Хит Комбо',
        price: 304,
        image: 'assets/images/kombobighit.png',
        category: 'Kombo'),
    Product(
        name: 'Двойной Биг Хит Комбо',
        price: 388,
        image: 'assets/images/kombodoublebighit.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Спешиал Джуниор Комбо',
        price: 377,
        image: 'assets/images/kombobigspeshialdjun.png',
        category: 'Kombo'),
    Product(
        name: 'Шримп Ролл Комбо',
        price: 404,
        image: 'assets/images/komboshrimproll.png',
        category: 'Kombo'),
    Product(
        name: 'Биг Спешиал Ролл Комбо',
        price: 355,
        image: 'assets/images/kombobigspecialroll.png',
        category: 'Kombo'),
    Product(
        name: 'Цезарь Ролл Комбо',
        price: 325,
        image: 'assets/images/kombocesarroll.png',
        category: 'Kombo'),
    Product(
        name: 'Гранд Де Люкс Комбо',
        price: 349,
        image: 'assets/images/kombogranddelux.png',
        category: 'Kombo'),
    Product(
        name: 'Гранд Комбо',
        price: 330,
        image: 'assets/images/kombogrand.png',
        category: 'Kombo'),
    Product(
        name: 'Чикен Премьер Комбо',
        price: 271,
        image: 'assets/images/kombochickenpremier.png',
        category: 'Kombo'),
    Product(
        name: 'Фиш Бургер Комбо',
        price: 329,
        image: 'assets/images/kombofish.png',
        category: 'Kombo'),
    Product(
        name: 'Гранд Пикант',
        price: 219,
        image: 'assets/images/newgrandpikant.png',
        category: 'New'),
    Product(
        name: 'Гранд Пикант Комбо',
        price: 353,
        image: 'assets/images/kombograndpikant.png',
        category: 'New'),
    Product(
        name: 'Гранд Пикант Большой Комбо',
        price: 393,
        image: 'assets/images/newgrandpikantbig.png',
        category: 'New'),
    Product(
        name: 'Айс Де Люкс Папайя-манго',
        price: 135,
        image: 'assets/images/newicedeluxpapaya.png',
        category: 'New'),
    Product(
        name: 'Молочный Коктейль Папайя-манго',
        price: 139,
        image: 'assets/images/papayamango.png',
        category: 'New'),
    Product(
        name: 'Физз Вишня',
        price: 105,
        image: 'assets/images/newfizz.png',
        category: 'New'),
    Product(
        name: 'Пара Биг Хит',
        price: 329,
        image: 'assets/images/newparabighit.png',
        category: 'New'),
    Product(
        name: 'Пара Биг Спешиал Барбекю Бекон',
        price: 595,
        image: 'assets/images/newparabigspecialbarbeq.png',
        category: 'New'),
    Product(
        name: 'Пара Биг Спешиал',
        price: 539,
        image: 'assets/images/newparabigspecial.png',
        category: 'New'),
    Product(
        name: 'Пирожок Манго-кремчиз',
        price: 79,
        image: 'assets/images/newpirogmango.png',
        category: 'New'),
    Product(
        name: 'Биг Спешиал Барбекю Бекон',
        price: 329,
        image: 'assets/images/newbigspecialbarbeq.png',
        category: 'New'),
    Product(
        name: 'Кизд Комбо обед с игрушкой',
        price: 285,
        image: 'assets/images/newkidskomboigrushka.png',
        category: 'New'),
    Product(
        name: 'Игрушка',
        price: 149,
        image: 'assets/images/newigrushka.png',
        category: 'New'),
    Product(
        name: 'Стикеры "Добро вместе"',
        price: 35,
        image: 'assets/images/newstickerdobro.png',
        category: 'New'),
    Product(
        name: 'Биг Хит',
        price: 182,
        image: 'assets/images/popbighit.png',
        category: 'Popular'),
    Product(
        name: 'Гранд Де Люкс',
        price: 219,
        image: 'assets/images/popgranddelux.png',
        category: 'Popular'),
    Product(
        name: 'Биг Спешиал',
        price: 299,
        image: 'assets/images/popbigspecial.png',
        category: 'Popular'),
    Product(
        name: 'Чикен Премьер',
        price: 177,
        image: 'assets/images/popchickenpremier.png',
        category: 'Popular'),
    Product(
        name: 'Картофель Фри',
        price: 125,
        image: 'assets/images/popkartoshka.png',
        category: 'Popular'),
    Product(
        name: 'Капучино',
        price: 119,
        image: 'assets/images/capuchino.png',
        category: 'Popular'),
    Product(
        name: 'Пирожок Вишневый',
        price: 69,
        image: 'assets/images/poppirogvishnia.png',
        category: 'Popular'),
    Product(
        name: 'Гранд Пикант',
        price: 219,
        image: 'assets/images/newgrandpikant.png',
        category: 'Burger'),
    Product(
        name: 'Пара Биг Хит',
        price: 329,
        image: 'assets/images/newparabighit.png',
        category: 'Burger'),
    Product(
        name: 'Пара Биг Спешиал Барбекю Бекон',
        price: 595,
        image: 'assets/images/newparabigspecialbarbeq.png',
        category: 'New'),
    Product(
        name: 'Пара Биг Спешиал',
        price: 539,
        image: 'assets/images/newparabigspecial.png',
        category: 'Burger'),
    Product(
        name: 'Биг Спешиал Барбекю Бекон',
        price: 329,
        image: 'assets/images/newbigspecialbarbeq.png',
        category: 'Burger'),
    Product(
        name: 'Биг Чикен Бургер Грибной',
        price: 295,
        image: 'assets/images/burbigchickgrib.png',
        category: 'Burger'),
    Product(
        name: 'Биг Чикен Бургер',
        price: 278,
        image: 'assets/images/burbigchick.png',
        category: 'Burger'),
    Product(
        name: 'Биг Хит',
        price: 182,
        image: 'assets/images/popbighit.png',
        category: 'Burger'),
    Product(
        name: 'Двойной Биг Хит',
        price: 254,
        image: 'assets/images/burdoublebighit.png',
        category: 'Burger'),
    Product(
        name: 'Гранд',
        price: 196,
        image: 'assets/images/burgrand.png',
        category: 'Burger'),
    Product(
        name: 'Гранд Де Люкс',
        price: 219,
        image: 'assets/images/popgranddelux.png',
        category: 'Burger'),
    Product(
        name: 'Двойной Гранд',
        price: 292,
        image: 'assets/images/burdoublegrand.png',
        category: 'Burger'),
    Product(
        name: 'Чизбургер',
        price: 84,
        image: 'assets/images/cheeseburger.png',
        category: 'Burger'),
    Product(
        name: 'Гамбургер',
        price: 78,
        image: 'assets/images/gamburger.png',
        category: 'Burger'),
    Product(
        name: 'Чикен Премьер',
        price: 177,
        image: 'assets/images/popchickenpremier.png',
        category: 'Burger'),
    Product(
        name: 'Чикен Хит',
        price: 121,
        image: 'assets/images/chickenhit.png',
        category: 'Burger'),
    Product(
        name: 'Чикенбургер',
        price: 74,
        image: 'assets/images/chickenburger.png',
        category: 'Burger'),
    Product(
        name: 'Фиш Бургер',
        price: 204,
        image: 'assets/images/fishburger.png',
        category: 'Burger'),
    Product(
        name: 'Сырные Колечки',
        price: 125,
        image: 'assets/images/sirkolca.png',
        category: 'Starter'),
    Product(
        name: 'Большой Снэк Бокс со стрипсами',
        price: 465,
        image: 'assets/images/vnnvnv.png',
        category: 'Starter'),
    Product(
        name: 'Большой Снэк Бокс с крыльями',
        price: 489,
        image: 'assets/images/dkmfnngdff.png',
        category: 'Starter'),
    Product(
        name: 'Картофель Фри',
        price: 85,
        image: 'assets/images/feknf.png',
        category: 'Starter'),
    Product(
        name: 'Картофель по-деревенски',
        price: 125,
        image: 'assets/images/fed.png',
        category: 'Starter'),
    Product(
        name: 'Снэк Бокс',
        price: 185,
        image: 'assets/images/ser.png',
        category: 'Starter'),
    Product(
        name: 'Снэк Бокс с крыльями',
        price: 255,
        image: 'assets/images/seg.png',
        category: 'Starter'),
    Product(
        name: 'Куриные Крылышки',
        price: 159,
        image: 'assets/images/hrr.png',
        category: 'Starter'),
    Product(
        name: 'Наггетсы',
        price: 65,
        image: 'assets/images/htj.png',
        category: 'Starter'),
    Product(
        name: 'Стрипсы',
        price: 139,
        image: 'assets/images/trh.png',
        category: 'Starter'),
    Product(
        name: 'Большие Креветки',
        price: 214,
        image: 'assets/images/whrh.png',
        category: 'Starter'),
    Product(
        name: 'Салат Цезарь',
        price: 199,
        image: 'assets/images/rwe.png',
        category: 'Starter'),
    Product(
        name: 'Салат Цезарь с креветками',
        price: 239,
        image: 'assets/images/rheg.png',
        category: 'Starter'),
    Product(
        name: 'Овощной салат',
        price: 135,
        image: 'assets/images/rhr.png',
        category: 'Starter'),
    Product(
        name: 'Морковные палочки',
        price: 85,
        image: 'assets/images/wrhj.png',
        category: 'Starter'),
    Product(
        name: 'Яблочные дольки',
        price: 85,
        image: 'assets/images/rgh.png',
        category: 'Starter'),
    Product(
        name: 'Кидз Комбо обед с книжкой',
        price: 285,
        image: 'assets/images/tsnst.png',
        category: 'Kids'),
    Product(
        name: 'Кидз Комбо салат с книжкой',
        price: 285,
        image: 'assets/images/grrgra.png',
        category: 'Kids'),
    Product(
        name: 'Книжка',
        price: 149,
        image: 'assets/images/ahrh.png',
        category: 'Kids'),
    Product(
        name: 'Кизд Комбо обед с игрушкой',
        price: 285,
        image: 'assets/images/newkidskomboigrushka.png',
        category: 'Kids'),
    Product(
        name: 'Кидз Комбо стартер или салат с игрушкой',
        price: 285,
        image: 'assets/images/gjij.png',
        category: 'Kids'),
    Product(
        name: 'Игрушка',
        price: 149,
        image: 'assets/images/newigrushka.png',
        category: 'Kids'),
    Product(
        name: 'Влажная салфетка',
        price: 5,
        image: 'assets/images/dksmclk.png',
        category: 'Kids'),
    Product(
        name: 'Айс Де Люкс Папайя-манго',
        price: 135,
        image: 'assets/images/newicedeluxpapaya.png',
        category: 'New'),
    Product(
        name: 'Молочный Коктейль Папайя-манго',
        price: 139,
        image: 'assets/images/papayamango.png',
        category: 'Desert'),
    Product(
        name: 'Тирамису',
        price: 179,
        image: 'assets/images/mcm.png',
        category: 'Desert'),
    Product(
        name: 'Айс Де Люкс Шоколадное',
        price: 125,
        image: 'assets/images/fmldm.png',
        category: 'Desert'),
    Product(
        name: 'Айс Де Люкс Шоколадно-клубничное',
        price: 125,
        image: 'assets/images/dsnv.png',
        category: 'Desert'),
    Product(
        name: 'Айс Де Люкс Шоколадно-карамельное',
        price: 125,
        image: 'assets/images/vdvnk.png',
        category: 'Desert'),
    Product(
        name: 'Мороженое Карамельное',
        price: 99,
        image: 'assets/images/sdbkj.png',
        category: 'Desert'),
    Product(
        name: 'Мороженое Шоколадное',
        price: 99,
        image: 'assets/images/sdmksf.png',
        category: 'Desert'),
    Product(
        name: 'Мороженое Клубничное',
        price: 99,
        image: 'assets/images/l;samd;.png',
        category: 'Desert'),
    Product(
        name: 'Вафельный рожок',
        price: 45,
        image: 'assets/images/samdm.png',
        category: 'Desert'),
    Product(
        name: 'Пирожок Вишневый',
        price: 69,
        image: 'assets/images/poppirogvishnia.png',
        category: 'Desert'),
    Product(
        name: 'Яблочное пюре',
        price: 85,
        image: 'assets/images/sdnakn.png',
        category: 'Desert'),
  ];

  List<Product> get products => List.unmodifiable(_products);
}