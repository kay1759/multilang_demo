# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Language.create do |lang|
  lang.id = 1
  lang.name = "English"
  lang.locale = "en"
  lang.isdefault = 1
  lang.created_at = "2016-06-20 00:00:00"
  lang.updated_at = "2016-06-20 00:00:00"
end

Language.create do |lang|
  lang.id = 2
  lang.name = "日本語"
  lang.locale = "ja"
  lang.isdefault = 2
  lang.created_at = "2016-06-20 00:00:00"
  lang.updated_at = "2016-06-20 00:00:00"
end

Category.create do |category|
  category.id = 100
  category.parent_id = 0
  category.status = 0
  category.ordering = 1
  category.created_at = "2016-06-20 00:00:00"
  category.updated_at = "2016-06-20 00:00:00"
end

Category.create do |category|
  category.id = 101
  category.parent_id = 0
  category.status = 0
  category.ordering = 2
  category.created_at = "2016-06-20 00:00:00"
  category.updated_at = "2016-06-20 00:00:00"
end

Category.create do |category|
  category.id = 102
  category.parent_id = 0
  category.status = 0
  category.ordering = 3
  category.created_at = "2016-06-20 00:00:00"
  category.updated_at = "2016-06-20 00:00:00"
end

Category.create do |category|
  category.id = 103
  category.parent_id = 0
  category.status = 0
  category.ordering = 4
  category.created_at = "2016-06-20 00:00:00"
  category.updated_at = "2016-06-20 00:00:00"
end

Category.create do |category|
  category.id = 104
  category.parent_id = 0
  category.status = 0
  category.ordering = 5
  category.created_at = "2016-06-20 00:00:00"
  category.updated_at = "2016-06-20 00:00:00"
end

Category.create do |category|
  category.id = 105
  category.parent_id = 0
  category.status = 0
  category.ordering = 6
  category.created_at = "2016-06-20 00:00:00"
  category.updated_at = "2016-06-20 00:00:00"
end

Category.create do |category|
  category.id = 106
  category.parent_id = 0
  category.status = 0
  category.ordering = 7
  category.created_at = "2016-06-20 00:00:00"
  category.updated_at = "2016-06-20 00:00:00"
end

CategoryDescription.create do |desc|
  desc.id = 1
  desc.category_id = 100
  desc.language_id = 1
  desc.name = "T-shirt"
  desc.description = "T-shirt"
end

CategoryDescription.create do |desc|
  desc.id = 2
  desc.category_id = 100
  desc.language_id = 2
  desc.name = "Ｔシャツ"
  desc.description = "Ｔシャツ"
end

CategoryDescription.create do |desc|
  desc.id = 3
  desc.category_id = 101
  desc.language_id = 1
  desc.name = "Outerwear"
  desc.description = "Outerwear"
end

CategoryDescription.create do |desc|
  desc.id = 4
  desc.category_id = 101
  desc.language_id = 2
  desc.name = "上着"
  desc.description = "上着"
end

CategoryDescription.create do |desc|
  desc.id = 5
  desc.category_id = 102
  desc.language_id = 1
  desc.name = "Jeans"
  desc.description = "Jeans"
end

CategoryDescription.create do |desc|
  desc.id = 6
  desc.category_id = 102
  desc.language_id = 2
  desc.name = "ジーンズ"
  desc.description = "ジーンズ"
end

CategoryDescription.create do |desc|
  desc.id = 7
  desc.category_id = 103
  desc.language_id = 1
  desc.name = "Belt"
  desc.description = "Belt"
end

CategoryDescription.create do |desc|
  desc.id = 8
  desc.category_id = 103
  desc.language_id = 2
  desc.name = "ベルト"
  desc.description = "ベルト"
end

CategoryDescription.create do |desc|
  desc.id = 9
  desc.category_id = 104
  desc.language_id = 1
  desc.name = "Shoes"
  desc.description = "Shoes"
end

CategoryDescription.create do |desc|
  desc.id = 10
  desc.category_id = 104
  desc.language_id = 2
  desc.name = "靴"
  desc.description = "靴"
end

CategoryDescription.create do |desc|
  desc.id = 11
  desc.category_id = 105
  desc.language_id = 1
  desc.name = "Accessories"
  desc.description = "Accessories"
end

CategoryDescription.create do |desc|
  desc.id = 12
  desc.category_id = 105
  desc.language_id = 2
  desc.name = "アクセサリー"
  desc.description = "アクセサリー"
end

CategoryDescription.create do |desc|
  desc.id = 13
  desc.category_id = 106
  desc.language_id = 1
  desc.name = "Others"
  desc.description = "Others"
end

CategoryDescription.create do |desc|
  desc.id = 14
  desc.category_id = 106
  desc.language_id = 2
  desc.name = "その他"
  desc.description = "その他"
end

Maker.create do |maker|
  maker.id = 1000
  maker.created_at = "2016-06-20 00:00:00"
  maker.updated_at = "2016-06-20 00:00:00"
end

MakerDescription.create do |desc|
  desc.id = 1
  desc.maker_id = 1000
  desc.language_id = 1
  desc.name = "MultiLang Design"
end

MakerDescription.create do |desc|
  desc.id = 2
  desc.maker_id = 1000
  desc.language_id = 2
  desc.name = "マルチラング デザイン"
end

Product.create do |product|
  product.id = 1
  product.product_code = "taco"
  product.maker_id = 1000
  product.category_id = 100
  product.status = 0
  product.ordering = 1
  product.net_amount = 175
  product.net_unit = "g"
  product.weight = 175
  product.size = "M,L,XL"
  product.price = 50.0000
  product.quantity = 56
  product.created_at = "2016-06-20 00:00:00"
  product.updated_at = "2016-06-20 00:00:00"
end

Product.create do |product|
  product.id = 2
  product.product_code = "horyuji"
  product.maker_id = 1000
  product.category_id = 100
  product.status = 0
  product.ordering = 2
  product.net_amount = 175
  product.net_unit = "g"
  product.weight = 175
  product.size = "S,M,L,XL"
  product.price = 50.0000
  product.quantity = 36
  product.created_at = "2016-06-20 00:00:00"
  product.updated_at = "2016-06-20 00:00:00"
end

Product.create do |product|
  product.id = 3
  product.product_code = "furinkazan"
  product.maker_id = 1000
  product.category_id = 100
  product.status = 0
  product.ordering = 3
  product.net_amount = 175
  product.net_unit = "g"
  product.weight = 175
  product.size = "M,L,XL"
  product.price = 50.0000
  product.quantity = 46
  product.created_at = "2016-06-20 00:00:00"
  product.updated_at = "2016-06-20 00:00:00"
end

Product.create do |product|
  product.id = 4
  product.product_code = "ninja"
  product.maker_id = 1000
  product.category_id = 100
  product.status = 0
  product.ordering = 4
  product.net_amount = 175
  product.net_unit = "g"
  product.weight = 175
  product.size = "S,M,L,XL"
  product.price = 60.0000
  product.quantity = 91
  product.created_at = "2016-06-20 00:00:00"
  product.updated_at = "2016-06-20 00:00:00"
end

Product.create do |product|
  product.id = 5
  product.product_code = "koi"
  product.maker_id = 1000
  product.category_id = 100
  product.status = 0
  product.ordering = 5
  product.net_amount = 160
  product.net_unit = "g"
  product.weight = 160
  product.size = "S,M,L"
  product.price = 50.0000
  product.quantity = 82
  product.created_at = "2016-06-20 00:00:00"
  product.updated_at = "2016-06-20 00:00:00"
end

ProductDescription.create do |desc|
  desc.id = 1
  desc.product_id = 1
  desc.language_id = 1
  desc.name = "Taco"
  desc.meaning = "Octopus"
  desc.description = "Octopus is a common ingredient in Japanese cuisine, including sushi, takoyaki and akashiyaki.\r\n\r\nTakoyaki is a ball-shaped snack made of a wheat flour-based batter and cooked in a special takoyaki pan. It is typically filled with minced or diced octopus (tako), tempura scraps (tenkasu), pickled ginger, and green onion.[1][2] Takoyaki are brushed with takoyaki sauce, similar to Worcestershire sauce, and mayonnaise. The takoyaki is then sprinkled with green laver (aonori) and shavings of dried bonito (katsuobushi). There are many variations to the takoyaki recipe, for example, ponzu (soy sauce with dashi and citrus vinegar), goma-dare (sesame-and-vinegar sauce) or vinegared dashi."
  desc.color = "Red",
  desc.material = "Bamboo Viscose 70% Cotton 30%"
end

ProductDescription.create do |desc|
  desc.id = 2
  desc.product_id = 1
  desc.language_id = 2
  desc.name = "タコ"
  desc.meaning = "蛸"
  desc.description = "タコは日本の食生活に深く根付いている。 加熱調理されることが多く、多くの種は茹でると鮮紅色を呈する。料理では刺身、寿司、煮だこ、酢だこ、酢味噌あえ、おでんの具材などに用いられる。たこ焼きやその原形とされる明石焼きの具材としても親しまれている。また、瀬戸内海周辺地域などでは蛸飯に供される。"
  desc.color = "赤"
  desc.material = "ビスコース・レーヨン 70% 綿 30%"
end

ProductDescription.create do |desc|
  desc.id = 3
  desc.product_id = 2
  desc.language_id = 1
  desc.name = "Horyuji"
  desc.meaning = "Horyu Temple"
  desc.description = "The grounds of Horyuji (Horyu Temple) house the world''s oldest surviving wooden structures, conveying images of Japan as it existed more than 1,300 years ago, during the Asuka Period (A.D.mid 6th-beginning of 8th c.).\r\n\r\nHoryuji contains over 2,300 important cultural and historical structures and articles, including nearly 190 that have been designated as National Treasures or Important Cultural Properties. In December of 1993,Horyuji, as a unique storehouse of world Buddhist culture, became the first treasure of any kind in Japan to be selected by UNESCO as part of the World Heritage."
  desc.color = "Gray, Blue"
  desc.material = "Bamboo Viscose 70% Cotton 30%"
end

ProductDescription.create do |desc|
  desc.id = 4
  desc.product_id = 2
  desc.language_id = 2
  desc.name = "ホウリュウジ"
  desc.meaning = "法隆寺"
  desc.description = "法隆寺は飛鳥時代の姿を現在に伝える世界最古の木造建築として広く知られています。その創建の由来は、「金堂」の東の間に安置されている「薬師如来像」の光背銘や『法隆寺伽藍縁起并流記資財帳』（７４７）の縁起文によって知ることができます。\r\n\r\n法隆寺は聖徳太子が建立された寺院として、１４００年に及ぶ輝かしい伝統を今に誇り、とくに１９９３年１２月には、ユネスコの世界文化遺産のリストに日本で初めて登録されるなど、世界的な仏教文化の宝庫として人々の注目を集めています。"
  desc.color = "グレー、青"
  desc.material = "ビスコース・レーヨン 70% 綿 30%"
end

ProductDescription.create do |desc|
  desc.id = 5
  desc.product_id = 3
  desc.language_id = 1
  desc.name = "Furinkazan"
  desc.meaning = "Wind, Forest, Fire and Mountain"
  desc.description = "Let your rapidity be that of the wind, your compactness that of the forest.\r\nIn raiding and plundering be like fire, is immovability like a mountain. Sentences from 'SUN TZU ON THE ART OF WAR' - the oldest military treatise in the world. "
  desc.color = "Blue, Black"
  desc.material = "Bamboo Viscose 70% Cotton 30%"
end

ProductDescription.create do |desc|
  desc.id = 6
  desc.product_id = 3
  desc.language_id = 2
  desc.name = "フウリンカザン"
  desc.meaning = "風林火山"
  desc.description = "風林火山（ふうりんかざん）は、甲斐の戦国大名・武田信玄の旗指物（軍旗）に記されたとされている「疾如風、徐如林、侵掠如火、不動如山」（疾（と）きこと風の如く、徐（しず）かなること林の如し、侵掠（しんりゃく：おかしかすめる）すること火の如く、動かざること山の如し）の通称である。"
  desc.color = "青、黒"
  desc.material = "ビスコース・レーヨン 70% 綿 30%"
end

ProductDescription.create do |desc|
  desc.id = 7
  desc.product_id = 4
  desc.language_id = 1
  desc.name = "Ninja"
  desc.meaning = "A covert agent or mercenary in feudal Japan"
  desc.description = "A ninja or shinobi was a covert agent or mercenary in feudal Japan. The functions of the ninja included espionage, sabotage, infiltration, and assassination, and open combat in certain situations.Their covert methods of waging war contrasted the ninja with the samurai, who observed strict rules about honor and combat.The shinobi proper, a specially trained group of spies and mercenaries, appeared in the Sengoku or 'warring states' period, in the 15th century, but antecedents may have existed in the 14th century, and possibly even in the 12th century (Heian or early Kamakura era)"
  desc.color = "Black,Blue,Gray,Graphite"
  desc.material = "Cotton 100%"
end

ProductDescription.create do |desc|
  desc.id = 8
  desc.product_id = 4
  desc.language_id = 2
  desc.name = "ニンジャ"
  desc.meaning = "忍者"
  desc.description = "忍者（にんじゃ）とは、鎌倉時代から江戸時代の日本で、大名や領主に仕え、または独立して諜報活動、破壊活動、浸透戦術、暗殺などを仕事としていたとされる、個人ないし集団の名称。その名は日本国内にとどまらず、世界的にもよく知られている。"
  desc.color = "黒、青、グレー、グラファイト"
  desc.material = "綿 100%"
end

ProductDescription.create do |desc|
  desc.id = 9
  desc.product_id = 5
  desc.language_id = 1
  desc.name = "Koi"
  desc.meaning = "Carp"
  desc.description = "Koi are a domesticated subspecies of common carp (Cyprinus carpio) that have been selectively bred for color. The common carp was introduced from China to Japan, where selective breeding of the common carp in the 1820s in the Niigata region resulted in koi. In Japanese culture, koi are treated with affection, and seen as good luck. They are popular in other parts of the world as outdoor pond fish."
  desc.color = "White, Navy Blue"
  desc.material = "Bamboo Viscose 70% Cotton 30%"
end

ProductDescription.create do |desc|
  desc.id = 10
  desc.product_id = 5
  desc.language_id = 2
  desc.name = "コイ"
  desc.meaning = "鯉"
  desc.description = "錦鯉は、普通の鯉(Cyprinus carpio) を観賞用に養殖した変種である。黒以外の鯉を色鯉（イロゴイ）、特に赤い鯉を緋鯉（ヒゴイ）、特に観賞魚として色彩や斑点など、体色を改良されたものを錦鯉（ニシキゴイ）という。特に錦鯉にはその模様によって多くの品種があり、紅白、大正三色、昭和三色、黄金、浅黄などがある。錦鯉は飼育用として人気が高く、斑点模様、色彩の鮮やかさ、大きさ、体型を価値基準として高額で取引されている。また、鱗が大きくて部分的にしかないドイツ鯉も移入されている。これに対して、ふつうの黒色の鯉は烏鯉（カラスゴイ）または黒鯉（クロゴイ）、特に野生の鯉は野鯉とよばれる。なお飼育型の鯉は尾びれの下半分が赤く染まっているものが多く見られる。錦鯉は日本の国魚である。"
  desc.color = "白、濃紺"
  desc.material = "ビスコース・レーヨン 70% 綿 30%"
end
