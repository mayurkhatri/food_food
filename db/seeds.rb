# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def self.create_chef_picture(picture_name)
  Picture.create(name: picture_name, image: File.open(File.join(Rails.root, "app/assets/images/chefs/", picture_name+".jpg")))
end

def self.create_recipe_picture(picture_name)
  Picture.create(name: picture_name, image: File.open(File.join(Rails.root, "app/assets/images/recipes/", picture_name+".jpg")))
end

def self.create_show_picture(show)
  picture = Picture.create(name: show.name, image: File.open(File.join(Rails.root, "app/assets/images/show/show.jpg")))
  picture.imageable = show
  picture.save
end

# Cuisines
cuisine_punjabi = Cuisine.create(name: "Punjabi")
cuisine_maharashtrian = Cuisine.create(name: "Maharashtrian")
cuisine_gujrati = Cuisine.create(name: "Gujrati")
cuisine_bengali = Cuisine.create(name: "Bengali")
cuisine_karnataka = Cuisine.create(name: "Karnataka")

# Courses
course_appetizer = Course.create(name: "Appetizer")
course_beverages = Course.create(name: "Beverages")
course_breakfast = Course.create(name: "Breakfast")
course_desserts = Course.create(name: "Desserts")
course_main_course = Course.create(name: "Main Course")
course_snacks = Course.create(name: "Snacks")
course_starters = Course.create(name: "Starters")

# Chefs
chef_ranjeev_kapoor = Chef.create(name: "Masterchef Ranjeev Kapoor", about: "Ranjeev Kapoor is the most celebrated face of Indian cuisine today. He is Chef extraordinaire, runs a successful TV Channel ‘FoodFood’, author of best selling cookbooks, restaurateur and winner of several culinary awards! He is living his dream of making Indian Cuisine the number one cuisine in the world and empowering Indian women through power of cooking to become self sufficient.", achievement: "His much awaited book for the International audience ‘How to Cook Indian’ was released on April 1, 2011 at Indique Heights, Wisconsin Circle. The response was absolutely fantastic and very encouraging.\n While in the USA for the book release he appeared on ‘Rachel Ray Show’ which was aired on 14th April, 2011 as also on The 10! Show on NBC Philly.")

chef_kripal_singh = Chef.create(name: "Chef Kripal Singh Sokhi", about: "Host of the show Turban Tadka", achievement: "Fusion of Indian food with international cuisine is what made Chef Kripal Singh Sokhi a name to reckon with in the hotel industry. Hailing from North India, Chef Kripal is a music lover and is fluent in English and five Indian languages - Hindi, Punjabi, Bengali, Oriya and Telugu.")

chef_vijay_chopra = Chef.create(name: "Chef Vijay Chopra", about: "Having worked in London and had great exposure to the International restaurant scene, Vijay brings a refreshing approach to Indian food culture.", achievement: "With his culinary creativity and true passion for food, Chef Vijay Chopra has worked in some of the most prestigious names around the world like Gordon Ramsay and Angela Harn. Chef Vijay is currently the Executive Chef at the Westin Mumbai Garden City")

chef_vipra_dhanna = Chef.create(name: "Chef Vipra Dhanna", about: "Winner of Masterchef 2.\n Anchor of Pure Sin and K for Kids.", achievement: "")

chef_veeransh_goila = Chef.create(name: "Chef Veeransh Goila", about: "Veeransh’s first taste of television success began when he tried out and won a spot on FOOD FOOD Maha Challenge, hosted by Sanjeev Kapoor and Madhuri Dixit. Veeransh went on to win the coveted title of India Ka Super Chef.Veeransh is now the Resident Food Editor with the channel FOODFOOD.", achievement: "Veeransh was a food enthusiast at an early age, making his first Jalebi for his family at the age of 12.  He continued dabbling in the kitchen while also enrolling in the Barry John Acting School as he had Bollywood dreams as well.  Through the encouragement of his family, especially his Mother, he was drawn more and more into the culinary field as his passion for food grew.His specialty is contemporary Indian food, with varied knowledge of Italian food & bakery and confectionery as well.")

chef_arpita_raichand = Chef.create(name: "Chef Arpita Raichand", about: "MUMMY KA MAGIC hosted by Arpita Raichand \n This 30-minute show features an endearing way to win over the hearts and tummies of tiny tots. Amrita makes nutritious yet tasty and appealing dishes for children who fuss while eating, be it from boredom with their daily meals or dislike of certain vegetables and foods. The show helps parents who do not want to get into the habit of forcing their fussy kids to eat and also those concerned about providing nutritious food for their children. The recipes of Mummy Ka Magic are made using healthy ingredients such as mushrooms, broccoli, zucchini, cheese etc. And since the recipes are prepared for kids, there is lot of focus on presentation which is visually appealing for children.", achievement: "Ms. Arpita Raichand is a model turned actor. She is a much known face in the Advertising fraternity, best known as the Brand Ambassador for “Whirlpool Home Appliances”. Anchoring a number of game shows on TV and Hosting award functions like the WOW Awards, Big Nite, ACE TECH Awards for builders and many more, she has also set the ramp on fire with her million dollar smile.")
# Shows
show_shunny_side_up = Show.create(name: "Sunny Side Up", day_of_telecast: "Monday", time_of_telecast: Time.now, description: "")
show_shunny_side_up.chef = chef_vipra_dhanna
show_shunny_side_up.save

show_k_for_kids = Show.create(name: "K for Kids", day_of_telecast: "Sunday", time_of_telecast: Time.now, description: "K for Kids is all about experiencing happy and joyful cooking, where kids learn to cook and appreciate their moms role in the kitchen in a fun way with Chef Shipra Khanna.")
show_k_for_kids.chef = chef_vipra_dhanna
show_k_for_kids.save

show_health_magzine = Show.create(name: "Health Magzine", day_of_telecast: "Thursday", time_of_telecast: Time.now, description: "This season Health Mange More is headed for a fresh look. The young, energetic and fit Chef Saransh teams up with some of the country’s leading nutritionists to boost your health quotient, like never before. This team of specialists have worked hard to address the nation’s most pressing urban health needs, to serve you nutritious, tasty solutions that will leave you begging for more.
From traditional Indian favourites like Paneer Tikka Masala and Almond Halwa to international delicacies like Mexican Tortilla Wraps, Italian Lasagna and American Chicken Pie, this Health Mange More Team have left no stone unturned in putting a healthy spin on popular treats… And if that’s not enough… every episode packs in some juicy nuggets of food wisdom, peppered with fitness fundas and myth-busting magic to make that power-packed formula fit for a disease-free, urban lifestyle.. all pieced together on a smoking hot and healthy show by the new host Sunanda Ezra Wong.")
show_health_magzine.chef = chef_veeransh_goila
show_health_magzine.save

show_india_unlimited = Show.create(name: "India Unlimited", day_of_telecast: "Thursday", time_of_telecast: Time.now, description: "Food Food’s Chef takes you through the varied tastes of India , its traditions , its color and brings it all together in his kitchen . His cooking tips and tricks, food secrets of recipes that are simple will make you wonder how the complex layers of taste and flavors may have been arrived at! So if you want to explore the rich Malabar Meal , or the traditional Tamil Tiffins, Kashmir’s Kabargah or Goa’s love for vinegar , meat or spices then just head over to Chef Shantanu laying a delectable spread of the state of food affairs in INDIA UNLIMITED")
show_india_unlimited.chef = chef_veeransh_goila
show_india_unlimited.save

show_sanjeev_kapoors_kitchen = Show.create(name: "Sanjeev Kapoor’s Kitchen", day_of_telecast: "Thursday", time_of_telecast: "3:00 pm", description: "Sanjeev Kapoor’s top 100 recipes. In this Unique show Master Chef Sanjeev Kapoor will teach the nation his top 100 recipes. From main course to starters, it will feature his best signature dishes.")
show_sanjeev_kapoors_kitchen.chef = chef_ranjeev_kapoor
show_sanjeev_kapoors_kitchen.save

show_cook_smart = Show.create(name: "Cook Smart", day_of_telecast: "Monday-Friday", time_of_telecast: Time.now, description: "The show is packed with simple and smart recipes. It teaches to cook light and healthy meals in easier yet exotic ways. The chef will also share interesting tips on how to cook smart in the kitchen and have a happier life. The show has various types of recipes cooked smartly using Indian spices. MasterChef Sanjeev Kapoor will help you give up on the unhealthy food you love and make you fall in love with your kitchen to cook nutritional food and remain healthy.")
show_cook_smart.chef = chef_ranjeev_kapoor
show_cook_smart.save

show_firangi_tadka = Show.create(name: "Firangi Tadka", day_of_telecast: "Sunday", time_of_telecast: Time.now, description: "Firangi Tadka will present international food using locally available ingredients! From red bean soups to mouth watering Italian pastas, all will be made easy, local and accessible. The show will also be a window into the culture and traditions of the cuisines…and make viewers travel around the world without ever leaving their kitchen!")
show_firangi_tadka.chef = chef_vijay_chopra
show_firangi_tadka.save

show_mummy_ka_magic = Show.create(name: "Mummy Ka Magic", day_of_telecast: "Friday", time_of_telecast: Time.now, description: "Here is a show that every mother can learn from. Mummy Ka Magic has yummylicious  solutions for the biggest problem in a mother’s life – feeding healthy food to their kids. From snacks to desserts that look good, taste good and still have all the essential nutrients required for a child, this show will feature all kinds of fun food that kids and their friends will love and Mothers will love making!")
show_mummy_ka_magic.chef = chef_arpita_raichand
show_mummy_ka_magic.save

show_turban_tadka = Show.create(name: "Turban Tadka", day_of_telecast: "Monday to Wednesday", time_of_telecast: Time.now, description: "The Taste of India! This show is all about maa ki daal and Indian desi cuisine! Chef Harpal Singh Sokhi, known as the most entertaining and energetic chef, takes you on a gastronomic journey in a fun and lively manner. Rustic and rooted deep within Indian traditions, Chef Sokhi cooks up some mouth watering desi cuisine!")
show_turban_tadka.chef = chef_kripal_singh
show_turban_tadka.save

show_the_pooja_makhija_show = Show.create(name: "The Pooja Makhija Show", day_of_telecast: "Friday", time_of_telecast: Time.now, description: "Sick of weighing scales? Want to chuck your measuring tape? We all try to mould ourselves into the cover page figure, the filmy size-zero, the athletic frame or the macho man physique… but there’s only one look that fits us right. That’s the look that keeps you fit on the inside and outside. She’s sold it to corporate honchos … delivered Bollywood A-listers glamourous box office avataars… given sports personalities a winning adrenalin boost … now she’s gearing up to show you how it’s done.. EAT your way to a thinner, healthier, smarter looking you. Watch renowned dietician Pooja Makhija give you the low down on how to eat to your hearts content, while you delete all excess baggage and come through nourished… mind, body and tummy. And if health is not your language trust actor and TV host Vishaal Malhotra to cut through the jargon and add his own brand of humour and drama to the winning formula. So Eat.to.Delete…with The Pooja Makhija Show.")
#Recipes
recipe_atta_ka_halwa = Recipe.create(name: "Atta ka Halwa", ingredients: "½ cup water 1cup shakkar (sugar) \n1cup atta (flour) \n½ cup ghee \ntbsptukdakaju- fried  \n1 tbsp badam(almond)-chopped", preparation_method: "Take water and sugar in a skillet and bring to boil, to dissolve the sugar \nMix the flour with ghee and cook till it turns brown \nCombine sugar water with it \nKeep stirring and when it thickens remove from gas \nGarnish with nuts, serve hot", preparation_time: "15", cooking_time: "15 to 30")
# TODO relate the shows to the recipes
recipe_atta_ka_halwa.cuisine = cuisine_punjabi
recipe_atta_ka_halwa.course = course_snacks
recipe_atta_ka_halwa.show = show_turban_tadka 
recipe_atta_ka_halwa.chef = chef_kripal_singh
recipe_atta_ka_halwa.save
recipe_pakoras = Recipe.create(name: "Pakoras", ingredients: "Besan, one cup \nWater, half cup \n1 small onion chopped  lengthwise \nbaking soda, 2 pinch \nsalt, ½ tsp \nredchilli powder, 1/2 tsp \ncooking oil", preparation_method: "First heat cooking oil in a frying pan for around eight minutes. Mix all the ingredients mentioned in a large sized bowl. Once the oil is well heated, keep t tsp of the prepared batter in the heated oil and deep fry for at least three minutes. Ensure that while you place the batter inside the oil, the pakoras have to rise above the oil. Now the pakoras are ready to be added in a Punjabi kadi.", preparation_time: "15", cooking_time: "less than 15")
recipe_pakoras.cuisine = cuisine_punjabi
recipe_pakoras.course = course_starters
recipe_pakoras.show = show_shunny_side_up
recipe_pakoras.chef = chef_vipra_dhanna
recipe_pakoras.save

recipe_thalipeeth = Recipe.create(name: "Thalipeeth", ingredients: "½ cup chick pea flour,( besan) ½ cup rice flour, (chawal ka atta) ½ cup whole wheat flour, (gehu ka atta) ½ cup millet flour,( ragi ka atta ) 2 tbsp semolina, (suji) 1 onion, chopped, (pyaz) 2 tbsp coriander, chopped, (dhaniya) 3-4 green chillies, chopped, (hari mirch) 1 tsp cumin powder,( jeera powder) 1 tsp roasted cumin whole, (sabut jeera) 1 tsp coriander powder, (dhaniya powder) ½ cup water salt to taste,namak 4 tbsp white butter,( makhan) 1 cup Yogurt- to serve 4 tbsp green chutney, Hari chutney, to serve 4 tbsp oil, + for cooking and greasing, (tel)", preparation_method: "take a big bowl and combine chickpea flour, rice flour, whole wheat flour and millet flour into it. Add onions and coriander. Now add green chillies, roasted cumin powder, whole cumin and coriander powder. Add salt and semolina. Mix all this well. Now knead into a dough adding a little water at a time. Rest the dough for 15-20 minutes.Divide the dough into small portions. Take a plastic sheet and Grease your hands with a little oil. Take a small portion of dough in your hand. Pressing gently on the plastic sheet, make a thalipeeth in circular (disc) shape. Heat oil in a pan and gently removing the thalipeeth from the plastic transfer into the pan. Make little holes on both sides. Cook on both sides adding oil as required. Make all thalipeeths in similar manner. Transfer the cooked thalipeeth on a plate and garnish with a dollop of butter. Serve it hot with yogurt and chutney.", preparation_time: "10", cooking_time: "15 TO 30")
recipe_thalipeeth.cuisine = cuisine_maharashtrian
recipe_thalipeeth.course = course_main_course
recipe_thalipeeth.show = show_india_unlimited
recipe_thalipeeth.chef = chef_veeransh_goila
recipe_thalipeeth.save

recipe_mirchi_pokora = Recipe.create(name: "Mirchi Pakora", ingredients: "8-10 AchariHariMirch Oil for frying \nFilling \n2 aloo(potato)- boiled \n½ tsp red chilli powder \n1 tsp Green chilli- chopped \n½ tspajwain(carom seeds) \n1 tsppudina leaves- finely chopped \n¼ tspadrak(ginger) paste \nSalt to taste \nFor batter \n1 cup Besan (Bengal gram flour) \n3 tbspchawalatta(rice flour) \n½ tspLalmirch(red chilli) powder \n1 pinch haldi(turmeric powder) \n1 pinch soda bicarb \n100gm imli chutney \n100gm pudina chutney", preparation_method: "Wash, wipe, slit the chillies along the length
\nRemove the seeds from the chillies
\nMix all the ingredients for the stuffing and fill it inside the chillies
\nMix all the ingredients for the batter and add enough water to prepare a thick batter
\nDip the stuffed chillies in this batter and fry in hot oil till it is golden in color
\nServe hot with imli chutney and pudina chutney", preparation_time: "15", cooking_time: "30 to 45")
recipe_mirchi_pokora.cuisine = cuisine_maharashtrian
recipe_mirchi_pokora.course = course_snacks
recipe_mirchi_pokora.show = show_turban_tadka 
recipe_mirchi_pokora.chef = chef_kripal_singh
recipe_mirchi_pokora.save

recipe_gujrati_kitchu = Recipe.create(name: "Gujrati Kitchu", ingredients: "Fine quality rice \nGreen moong dal \nPeppercorns \nTurmeric powder \nWater  \nClarified butter or ghee \nSalt", preparation_method: "In a bowl, combine moong dal and rice. First wash and then soak it. Now drain.
\nTransfer rice-dal mixture in a pressure cooker and put salt, peppercorns, water and turmeric powder into it.
\nCook this mixture for four whistles and after that take off the pressure cooker from heat. Keep aside.
\nTake Khichu out from the pressure cooker and pour ghee in it.
\nServe hot with papad and kadhi.", preparation_time: "10", cooking_time: "less than 15")
recipe_gujrati_kitchu.cuisine = cuisine_gujrati
recipe_gujrati_kitchu.course = course_breakfast 
recipe_gujrati_kitchu.show = show_sanjeev_kapoors_kitchen
recipe_gujrati_kitchu.chef = chef_ranjeev_kapoor
recipe_gujrati_kitchu.save

recipe_gol_papdi = Recipe.create(name: "Gol Papdi", ingredients: "Wheat flour :- 1/2 cup
\nGrated jaggery :- 1/3 cup
\nCardamom powder :- 1/4 tsp
\nGhee :- 4 tbsp
\nPoppy seeds :- 1/2 tsp", preparation_method: "On a greased plate, spread the poppy seeds. Keep aside.
In a pan, heat ghee and once ghee melts completely, then mix wheat flour in it. Continue mixing till golden brown.
Switch off the heat and mix cardamom powder and jaggery while the mixture is hot.
Combine well to melt the jaggery.
Pour the prepared mixture on a greased plate with poppy seeds, while still warm.
Uniformly spread it using a base of little bowl.
When the mixture cools down, cut into desired shapes. \nGol Papdi is prepared.", preparation_time: "10", cooking_time: "15 to 30")
recipe_gol_papdi.cuisine = cuisine_gujrati
recipe_gol_papdi.course = course_main_course 
recipe_gol_papdi.show = show_k_for_kids 
recipe_gol_papdi.chef = chef_vipra_dhanna
recipe_gol_papdi.save

recipe_sandesh = Recipe.create(name: "Sandesh", ingredients: "300 gmspaneer
\n4 to 5 tbsppowdered sugar
\n1 tsporange juice
\n2 drops orange essence (optional)
\n2 drops orange colour (optional)
\nFor decoration
\nsegments of 2 oranges- pulp
\n4 almonds (badam), blanched and sliced
\n4 blanched and sliced pistachios", preparation_method: "Knead the paneer thoroughly with the sugar.
Add the orange juice, orange essence and orange color and mix well.
Spread half this mixture to form a 125 mm. square on a plate or dish.
Arrange half the orange segments on top.
Cover with the remaining paneer mixture, spreading it evenly on top chill.
Using a cutter, cut into small circles and serve. You can also shape the sandesh by hand and stuff the orange and nuts inside.", preparation_time: "15", cooking_time: "30 to 45")
recipe_sandesh.cuisine = cuisine_bengali
recipe_sandesh.course = course_desserts 
recipe_sandesh.show = show_mummy_ka_magic 
recipe_sandesh.chef = chef_arpita_raichand
recipe_sandesh.save

recipe_shorshe_dharosh = Recipe.create(name: "Shorshe Dharosh", ingredients: "Oil ½ tsp kalo jarred(nigella seeds) 3 green chillies-slit lengthwise 30 small dharosh-head and tail cut 3 tbsp sarson(mustard) seeds 1 tbsp khus khus(poppy seeds) 3 green chillies A pinch of salt Soak all the above for 30 minutes and make a paste For gravy/sauce 2heaped tbsp sarson(mustard) –of the prepared paste 1 tbsp dahi(yogurt)-mix with the mustard paste and leave for 2 minutes Peanut oil Mustard oil (optional) Sugar Salt Turmeric", preparation_method: "Heat oil in a kadhai/ frying pan. Temper with jeera and green chilli
When the spices start sputtering add washed and dried okra.
Sauté okra for 44-5 mins with a pinch of turmeric
Do not deep fry them, they should be tender and half cooked. You will know because they will glisten and have turned soft by this time
Mix the mustard paste with yogurt and add the mixture to the okra
Add salt and sugar.
Mix well, add a dash of mustard oil and cover and cook.
Stir intermittently till orka is done", preparation_time: "15", cooking_time: "30 to 45")
recipe_shorshe_dharosh.cuisine = cuisine_bengali
recipe_shorshe_dharosh.course = course_main_course 
recipe_shorshe_dharosh.show = show_health_magzine
recipe_shorshe_dharosh.chef = chef_veeransh_goila 
recipe_shorshe_dharosh.save

recipe_bitter_gourd_chips = Recipe.create(name: "Bitter Gourd (Karela) Chips", ingredients: "Bitter gourd (Karela)-4 (sliced) Salt to taste Turmeric powder-1 pinch Chili powder-1 tsp Oil for frying Kissan tomato ketchup-as an accompaniment", preparation_method: "Method for karela chips:- In a bowl, mix karela chips , Salt, turmeric and mix well . Deep fry till golden in color. Serve it with ketchup.", preparation_time: "20", cooking_time: "less than 15")
recipe_bitter_gourd_chips.cuisine = cuisine_karnataka
recipe_bitter_gourd_chips.course = course_snacks  
recipe_bitter_gourd_chips.show = show_sanjeev_kapoors_kitchen 
recipe_bitter_gourd_chips.chef = chef_ranjeev_kapoor
recipe_bitter_gourd_chips.save

recipe_fruit_porridge = Recipe.create(name: "Fruit Porridge", ingredients: "1 cup oats ¼ cup yogurt, dahi 1 ½ cup Milk, doodh 1 cups water 1 apple, cored, peeled and cubed,( seb) 2 bananas, peeled and cubed, ( kela) 1 tsp lemon zest, nimbu ka chhilka 8 tbsp honey,( shehed) 4 tbsp sunflower seeds,toasted 4 strawberries-to garnish", preparation_method: "Peel one apple and after removing seeds cut it into cubes and put it into a blender. Now take half a banana, peel and cut it and put into the blender. Add lemon zest into the blender and adding a few spoons of water blend into a smooth puree. Pour this mixture into a pan. Now add yogurt, milk and water into the pan and mix everything well. Bring the mixture to a boil and add the Oats. Cook this until the mixture thickens stirring continuously. Now add the remaining of the bananas, peeled and diced. Now add the honey and mix everything together. Serve the porridge in a bowl garnished with sunflower seeds and decorated with strawberries.", preparation_time: "10", cooking_time: "15 to 30")
recipe_fruit_porridge.course = course_appetizer
#recipe_fruit_porridge.cuisine = 
recipe_fruit_porridge.show = show_mummy_ka_magic
recipe_fruit_porridge.chef = chef_arpita_raichand
recipe_fruit_porridge.save

recipe_badam_ki_phirni = Recipe.create(name: "Badam ki Phirni", ingredients: "500 ml milk 1/2 can milkmaid 1 cup ground almonds 1/2 tsp cardamom powder 1/4 cup soaked rice", preparation_method: "Boil milk in a pan. Grind soaked rice in a mixer. Add the ground rice in the pan and mix it well with milk. Add ground almonds in this mixture and keep stirring. Then add cardamom powder and let this mixture boil for sometime. Once this mixture is thoroughly boiled add milkmaid and keep stirring. After the mixture is ready, and the rice is cooked, pour them in bowls made of soil and keep them in the fridge to chill.", preparation_time: "25", cooking_time: "15 to 30")
recipe_badam_ki_phirni.course = course_beverages
recipe_badam_ki_phirni.show = show_mummy_ka_magic
recipe_badam_ki_phirni.save

recipe_mango_ki_smoothie = Recipe.create(name: "Mango ki Smoothie", ingredients: "1 cup mango pulp 1 cup pineapple chunks ½ glass pineapple juice 1 cup yogurt 1 tsp vanilla extract 1 ripe banana, peeled and sliced", preparation_method: "1.Combine all the ingredients in blender. \n2.Blend until smooth", preparation_time: "10", cooking_time: "less than 15")
recipe_mango_ki_smoothie.course = course_beverages
recipe_mango_ki_smoothie.show = show_sanjeev_kapoors_kitchen 
recipe_mango_ki_smoothie.chef = chef_ranjeev_kapoor
recipe_mango_ki_smoothie.save

recipe_baked_karanji = Recipe.create(name: "Baked Karanji", ingredients: "For Covering: \n100 grams (1 cup) Maida (All Purpose Flour) \n20 grams (1 tablespoon + 1 teaspoon) Ghee (Clarified Butter) \n15 grams (1 tablespoon) Curd \n¼ teaspoon Salt \n¼ teaspoon Baking Soda \nFor Stuffing: \n100 grams (1¼ cup) Fresh Grated Coconut \n45 grams (¼ cup) Jaggery Grated \n15 grams (1 tablespoon) Honey \n½ teaspoon Cardamom powder", preparation_method: "For Stuffing: \n1.Add grated coconut to nonstick pan and put pan on medium heat. \n2.Add jaggery and mix well. \n3.Stir till jaggery melts and mixes with coconut. \n4.Now add sugar and fry well till it gets dissolved. \n5.Add cardamom powder and switch off the flame. \n6.Let it cool completely. \nFor Covering: \n1.Add Flour, curd, salt and ghee in a large bowl. \n2.Mix well and use water to knead the semi soft dough. \n3.Cover the dough with a small bowl and keep it to rest for 2 hours. \n4.After resting, knead the dough well for 1 minute. \n5.Divide the dough into 12 equal parts and make round balls. \n6.Now roll out small balls of dough into a puri-like round shape. \n7.Place ½ tablespoon of stuffing in the center of the puri. \n8.Now join the edges of the puri and seal them properly. \n9.Add decoration marks with the help of fork on the sealed edges. \n10.Now arrange all karanjis in the tray and keep it for baking in the PHILIPS AIR FRYER \n11.Bake for 25 minutes at 180oc. \n12.Serve at room temperature. \n13.Store in airtight container once completely coole", preparation_time: "1 Hour", cooking_time: "More than 1 Hour")
recipe_baked_karanji.course = course_breakfast
recipe_baked_karanji.show = show_shunny_side_up 
recipe_baked_karanji.chef = chef_vipra_dhanna
recipe_baked_karanji.save

recipe_avacado_pasta = Recipe.create(name: "Avacado Pasta", ingredients: "6 oz/170g Wheat pasta
\n1 large ripe avocado, pitted and peel removed
\n1 tablespoon lime juice
\n1 clove garlic, minced
\n1/4 cup chopped fresh cilantro (fresh coriander)
\n1/2 teaspoon kosher salt (or quality sea salt)
\nFreshly ground black pepper, to taste", preparation_method: "Sauce
\n1.Process the ingredients until smooth and creamy.
\n2.Scrape the sauce out of the blender or food processor with a spatula. Put it into a medium-sized bowl.
\n3.Cover the bowl with plastic wrap to prevent the avocado from turning brown too quickly. Set it aside while you prepare your pasta.
\nPasta
\n1.Place a colander in the sink. Drain the water from the pasta.
\n2.Uncover the bowl containing the avocado sauce while the pasta is draining.
\n3.Add the pasta to the avocado sauce and mix it together thoroughly.
\n4.Serve the dish immediately. Serve with fresh rolls and a salad, if desired.", preparation_time: "10", cooking_time: "less than 15")
recipe_avacado_pasta.course = course_breakfast
recipe_avacado_pasta.show = show_mummy_ka_magic
recipe_avacado_pasta.chef = chef_arpita_raichand
recipe_avacado_pasta.save

recipe_khoya_layered_barfi = Recipe.create(name: "Khoya Layered Barfi", ingredients: "500 gms khoya \n½ can milkmaid \n¼ tsp saffron \n½ cup coconut milk \n½ cup desiccated coconut \n½ tsp cardamom powder \n2-3 tbsp ghee \n1 rose petals", preparation_method: "Soak saffron in water for sometime.
\nTake an aluminium plate and make a first layer of rose petals.\nTo prepare the second layer, take a pan and put desiccated coconut in it.
\nAdd khoya, ghee, cardamom powder and milkmaid in it.
\nStir the mixture properly.
\nAdd coconut milk while stirring the mixture.
\nOnce the mixture is prepared, layer it on top of rose petals as the second layer.
\nTo prepare the final layer, heat some khoya in the pan.
\nAdd milkmaid to this and mix them properly.
\nNow add a pinch of cardamom powder and soaked saffron in this mixture and stir properly.
\nOnce this mixture is dry, pour it over the second layer.
\nKeep these layers at room temperature to set.
\nNow de mould the layeredbarfi and cut them into pieces to serve.", preparation_time: "25", cooking_time: "15 to 30")
recipe_khoya_layered_barfi.course = course_desserts
recipe_khoya_layered_barfi.show = show_sanjeev_kapoors_kitchen 
recipe_khoya_layered_barfi.chef = chef_ranjeev_kapoor
recipe_khoya_layered_barfi.save

recipe_whole_wheat_pretzel = Recipe.create(name: "Whole Wheat Pretzel", ingredients: "For the Dough: \n12.5 oz whole wheat flour (2.5 cups) \n1/2 tsp sea salt \n1 tsp sugar \n1 packet Platinum Red Star Yeast \n1 cup very warm water (120-125 degrees F) \nFor the Soda Wash: \n1/2 cup warm water \n1 tbsp baking soda \nFor the topping: \nVegetable oil for greasing the sheet pan \nCoarse sea salt, for sprinkling \n2 tbsp unsalted butter, melted \n1 tsp ground cinnamon \n1/2 cup organic brown sugar", preparation_method: "1.Combine all the dough ingredients in the bowl of a stand mixer, and mix with the paddle attachment until somewhat combined (or just mix by hand with a wooden spoon). Change to the dough hook and knead on medium low for 10 minutes. The dough should not be sticky, just slightly tacky to the touch. \n2.Place the dough in a Ziploc bag and let the dough rise for 30 minutes. \n3.Preheat the oven to 200degreesC, and lightly grease a baking sheet with vegetable oil. You could also do parchment paper if you can find one that is rated high enough (most parchment papers I have seen only go up to 200degreesC). \n4.Remove the dough from the bag and place onto a clean countertop. Divide the dough into 8 pieces (just cut it with a knife). \n5.Whisk to combine the warm water and baking soda and heat in the microwave for 1 minute. FYI it is not going to dissolve completely, and that is okay. \n6.Roll each of the eight pieces into a long rope, and shape each one into a pretzel (see the step-by-step photos on the blog post to see how to do this). \n7.Dip each pretzel into the soda wash and place onto the greased baking sheet. Sprinkle with coarse sea salt, then let them rest for 10 minutes. \n8.Bake for 9 to 10 minutes until the pretzels are golden brown, and prep the cinnamon sugar by whisking the sugar and cinnamon together. Brush the pretzels with the melted butter while they are hot out of the oven, then toss in the cinnamon sugar", preparation_time: "30", cooking_time: "30 to 45")
recipe_whole_wheat_pretzel.course = course_desserts
recipe_whole_wheat_pretzel.show = show_turban_tadka 
recipe_whole_wheat_pretzel.chef = chef_kripal_singh
recipe_whole_wheat_pretzel.save

recipe_soya_pulav = Recipe.create(name: "Soya Pulav", ingredients: "1 cup rice \n1 cup Soya granules \n1 onion, chopped finely \n2-3 tomatoes, chopped finely \n2 tsp ginger garlic paste \n1 tsp fennel seeds \n1/2 tsp garam masala \n1/2 tsp cumin coriander powder \n1/4 tsp turmeric powder \n½ cup boiled channa dal \n2-3 green chillies, sliced thinly 1 bay leaf Ghee to taste Mint to garnish", preparation_method: "Heat 1 tsp of ghee, add fennel, bay leaf, onions, ginger garlic paste, and sauté until aromatic. Then add the tomatoes, dry spices along with chillies and sauté it with some salt for few more minutes. Add the Soy granules. Then add the rice and sauté for 1-2 minutes. Now add par boiled channa dal. Add 2-1/2 cups of water (or vegetable stock) along with salt. Close it with a lid and cook for 6-10 minutes. Garnish with mint. Serve with raita.", preparation_time: "30", cooking_time: "15 to 30")
recipe_soya_pulav.course = course_main_course
recipe_soya_pulav.show = show_shunny_side_up 
recipe_soya_pulav.chef = chef_vipra_dhanna
recipe_soya_pulav.save

recipe_lemon_rice = Recipe.create(name: "Lemon Rice", ingredients: "2 cups leftover rice \nJuice of 2 lemons \nLemon Zest \n2 tbsp oil \n1 tsp coriander seeds \n1 tsp mustard seeds \n5 - 6 curry leaves \n2 green chillies slit lengthwise \n1\" ginger grated \n1/2 cup peanuts roasted \n1 tsp turmeric powder Salt to taste", preparation_method: "Roast and coarsely powder the coriander seeds.Keep aside. \nHeat the oil in a pan and let the mustard seeds splutter,add the curry leaves and green chillies. \nFry till the spluttering stops and add the ginger and peanuts.Fry for another minute. \nAdd the turmeric powder,lemon zest and take it off het. \nAdd the lemon juice and mix well. \nAdd the rice, roasted coriander powder and salt to taste and mix thoroughly. \nPlace the pan back on the stove. \nCook for 2 – 3mins with 2 tbsp of water. \nServe with a Raita.", preparation_time: "20", cooking_time: "15 to 30")
recipe_lemon_rice.course = course_main_course
recipe_lemon_rice.cuisine = cuisine_karnataka
recipe_lemon_rice.show = show_shunny_side_up 
recipe_lemon_rice.chef = chef_vipra_dhanna
recipe_lemon_rice.save

recipe_chilli_masala_rolls = Recipe.create(name: "Chilli Masala Rolls", ingredients: "Corn flour :-¼ cup \nMaida :-1 cup \nFenugreek (soak in water for 30 minutes):-¼ cup \nChili (chopped):-¼ cup \nCoriander leaves (chopped):-Few \nBengal gram flour :-¼ cup \nLime juice :-2 tsp \nGaram masala powder :-½ tsp \nTurmeric powder :-¼ tsp \nGhee:-As required \nOil :-As required \nSalt :-To taste", preparation_method: "In a bowl, combine maida, corn flour and salt to prepare a dough using water. \nCook soaked fenugreek in water, remove excess water and set aside. \nCombine turmeric powder,bengal gram flour, fenugreek and garam masala powder. \nIn a pan, heat ghee and put chopped coriander and chili in hot oil. Fry for a few minutes. \nNow mix lime squeeze, fenugreek and salt in above mixture. Stir for few minutes and then turn off the flame. \nTake a small dough portion and move into a triangle. Place the prepared chili mixture in it and roll. \nRepeat the process to make more rolls. \nIn a pan, heat oil and put the rolls, fryuntil golden brown. Serve hot.", preparation_time: "20", cooking_time: "15 to 30")
recipe_chilli_masala_rolls.course = course_starters
#recipe_chilli_masala_rolls.cuisine = 
recipe_chilli_masala_rolls.show = show_india_unlimited 
recipe_chilli_masala_rolls.chef = chef_veeransh_goila
recipe_chilli_masala_rolls.save

recipe_lavang_latika = Recipe.create(name: "Lavang Latika", ingredients: "12 cloves \nFor syrup \n1 cup sugar \n2 tsps milk \nFor cover \n1 cup refined flour (maida) \n3 tbsps ghee + for deep-frying \nFor stuffing \n3 tbsps khoya/mawa \n2 tbsps chopped dry fruits (cashewnuts, almonds) \n1 tbsp powdered sugar \n¼ tsp green cardamom powder \nA few saffron strands", preparation_method: "", preparation_time: "15", cooking_time: "15 to 30")
recipe_lavang_latika.course = course_desserts
recipe_lavang_latika.cuisine = cuisine_bengali
recipe_lavang_latika.show = show_sanjeev_kapoors_kitchen
recipe_lavang_latika.chef = chef_ranjeev_kapoor
recipe_lavang_latika.save

# Images for chefs
picture = create_chef_picture("chef-ajay-chopra")
picture.imageable = chef_vijay_chopra 
picture.save

picture = create_chef_picture("chef-amrita-raichand")
picture.imageable = chef_arpita_raichand 
picture.save

picture = create_chef_picture("chef-harpal-singh")
picture.imageable = chef_kripal_singh 
picture.save

picture = create_chef_picture("chef-sanjeev-kapoor")
picture.imageable = chef_ranjeev_kapoor 
picture.save

picture = create_chef_picture("chef-shipra-khanna")
picture.imageable = chef_vipra_dhanna
picture.save

picture = create_chef_picture("chef-veeresh-goila")
picture.imageable = chef_veeransh_goila 
picture.save

picture = create_chef_picture("chef-shipra-khanna")
picture.imageable = chef_vipra_dhanna
picture.save

# Images for recipes

picture = create_recipe_picture("recipe-atte-ka-halwa")
picture.imageable = recipe_atta_ka_halwa
picture.save

picture = create_recipe_picture("recipe-avocado-pasta")
picture.imageable = recipe_avacado_pasta 
picture.save

picture = create_recipe_picture("recipe-badam-ki-phirni")
picture.imageable = recipe_badam_ki_phirni 
picture.save

picture = create_recipe_picture("recipe-baked-karanji")
picture.imageable = recipe_baked_karanji 
picture.save

picture = create_recipe_picture("recipe-bitter-gourd-chips")
picture.imageable = recipe_bitter_gourd_chips 
picture.save

picture = create_recipe_picture("recipe-chilli-masala-rolls")
picture.imageable = recipe_chilli_masala_rolls 
picture.save

picture = create_recipe_picture("recipe-fruit-porridge")
picture.imageable = recipe_fruit_porridge 
picture.save

picture = create_recipe_picture("recipe-gol-papdi")
picture.imageable = recipe_gol_papdi
picture.save

picture = create_recipe_picture("recipe-gujrati-khichu")
picture.imageable = recipe_gujrati_kitchu 
picture.save

picture = create_recipe_picture("recipe-khoya-layered-burfi")
picture.imageable = recipe_khoya_layered_barfi 
picture.save

picture = create_recipe_picture("recipe-lavang-latika")
picture.imageable = recipe_lavang_latika 
picture.save

picture = create_recipe_picture("recipe-lemon-rice")
picture.imageable = recipe_lemon_rice 
picture.save

picture = create_recipe_picture("recipe-mango-smoothie")
picture.imageable = recipe_mango_ki_smoothie
picture.save

picture = create_recipe_picture("recipe-mirchi-pakora")
picture.imageable = recipe_mirchi_pokora
picture.save

picture = create_recipe_picture("recipe-pakora")
picture.imageable = recipe_pakoras 
picture.save

picture = create_recipe_picture("recipe-sandesh")
picture.imageable = recipe_sandesh 
picture.save

picture = create_recipe_picture("recipe-sorshe-dharosh")
picture.imageable = recipe_shorshe_dharosh 
picture.save

picture = create_recipe_picture("recipe-soya-pulav")
picture.imageable = recipe_soya_pulav 
picture.save

picture = create_recipe_picture("recipe-thalipeeth")
picture.imageable = recipe_thalipeeth 
picture.save

picture = create_recipe_picture("recipe-whole-wheat-pretzels")
picture.imageable = recipe_whole_wheat_pretzel 
picture.save

# Images for shows
# TODO search new pictures for all the shows.Currently single pic is displayed for all shows
shows = [show_shunny_side_up, show_k_for_kids, show_health_magzine, show_india_unlimited, show_sanjeev_kapoors_kitchen,
show_cook_smart, show_firangi_tadka, show_mummy_ka_magic, show_turban_tadka, show_the_pooja_makhija_show]

shows.each do |show|
  create_show_picture(show)
end

