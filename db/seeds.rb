require_relative'config'

# users =[
# {user_name: 'MerBear', f_name: 'Meredith', l_name: 'Salguero', e_mail: 'MMMHoney@hotmail.com'},
# {user_name: 'ChillChris', f_name: 'Chris', l_name: 'Johnson', e_mail: 'ChillChris@yahoo.com'}
# ]

# User.create(users)

articles = [
{title: "Veggies", date_published: DateTime.new(2015,12,01,8,37), content: "Veggies are soo Yummy", img_url: "http://www.valeotraining.com/wp-content/uploads/2013/04/veggies-1.jpg", user_id: 1}
]

Article.create(articles)

categories = [
{name: 'Vegetables'}
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
