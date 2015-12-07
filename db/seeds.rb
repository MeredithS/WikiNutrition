require_relative'config'

users =[
{user_name: 'MerBear',
 password: 'fuzzy', 
 f_name: 'Meredith', 
 l_name: 'Salguero', 
 e_mail: 'MMMHoney@hotmail.com'},
{user_name: 'ChillChris',
password: 'Chillaxin', 
f_name: 'Chris', 
l_name: 'Johnson', 
e_mail: 'straightchillin@gmail.com'}
]

User.create(users)

articles = [
{title: "Veggies", 
date_published: Time.new(2015,12,01,8,37), 
content: "Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.

Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.

Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.

Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jÃ­cama salsify.

Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard.", 
img_url: "http://www.valeotraining.com/wp-content/uploads/2013/04/veggies-1.jpg", 
user_id: 1},
{title: "Fruits",
date_published: Time.new(2015,12,7,10,22),
content: "Austin celiac flexitarian, scenester craft beer cornhole bitters. Literally flexitarian cray typewriter slow-carb cred. Sustainable meh narwhal, yuccie 3 wolf moon street art letterpress asymmetrical. Artisan wayfarers ramps VHS etsy, everyday carry sriracha scenester kombucha YOLO tumblr bespoke trust fund. Selfies direct trade brooklyn, pabst chillwave before they sold out you probably haven't heard of them vegan tattooed semiotics microdosing deep v vinyl. Squid tumblr single-origin coffee etsy, selfies mixtape vegan thundercats trust fund actually. IPhone banh mi art party, godard post-ironic tumblr yr mumblecore sartorial kale chips squid.

Irony freegan taxidermy poutine vice polaroid umami, tote bag cornhole kitsch beard. Mustache kickstarter jean shorts hashtag, YOLO williamsburg poutine bicycle rights banh mi cliche lumbersexual marfa biodiesel. Hella you probably haven't heard of them actually everyday carry occupy, pickled deep v disrupt. Ramps fixie hammock disrupt paleo, church-key austin poutine kogi pour-over franzen scenester squid. Cray yuccie mumblecore distillery. Aesthetic ennui neutra cray sartorial. Narwhal schlitz tote bag mumblecore, vice pug affogato disrupt YOLO cardigan echo park.",
img_url: "http://weknowyourdreams.com/images/fruit/fruit-04.jpg",
user_id: 2}
]

Article.create(articles)

categories = [
{name: 'VEGETABLES'},
{name: 'FRUITS'}
]

Category.create(categories)

# edit_times = [
# {time: DateTime.new(2015,12,01,8,50)}
# ]

# EditTime.create(edit_times)

# article_edit_times =[
# {article_id: 1, edit_time_id: 1, user_id: 2}
# ]

# ArticleEditTime.create(article_edit_times)

# a1=Article.find(1)
# c1=Category.find(1)
# a1.categories.push(c1)
