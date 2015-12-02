require_relative'config'

users =[
{f_name: 'Meredith', l_name: 'Salguero', address: '22-62 33rd Street', city: 'Astoria', state: 'NY', zip: 11105},
{f_name: 'Chris', l_name: 'Johnson', address: '420 Imaginary Lane', city: 'New York', state: 'NY', zip: 10003}
]

User.create(users)

articles = [
{title: "Veggies", date_published: DateTime.new(2015,12,01,8,37), content: "Veggies are soo Yummy", user_id: 1}
]

Article.create(articles)

categories = [
{name: 'Vegetables'}
]

Category.create(categories)

edit_times = [
{time: DateTime.new(2015,12,01,8,50)}
]

EditTime.create(edit_times)

article_edit_times =[
{article_id: 1, edit_time_id: 1, user_id: 2}
]

ArticleEditTime.create(article_edit_times)

a1=Article.find(1)
c1=Category.find(1)
a1.categories.push(c1)
