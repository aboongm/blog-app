# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



mohammed = User.create!(
    name: 'mohammed',
    photo: 'https://dummyimage.com/600x400/000/fff' ,
    bio: 'Lorem ipsum dolor sit amet,
    consectetur adipiscing elit. Pellentesque nulla nunc, 
    lacinia sed volutpat ut, tristique et tortor. 
    Proin a nulla lorem. Duis ac nunc lectus. Ut non felis id elit tempor gravida.
    Aenean varius sem vel tellus elementum,
    in eleifend mauris eleifend. Donec at tempor libero,
    et maximus magna. Nulla vehicula convallis nulla.
    Duis arcu turpis, egestas ultrices est at, scelerisque lobortis est.',
    posts_counter: 0, email: 'salah@bar.com', password: '123456')
    
   tom = User.create!(
    name: 'tom',
    photo: 'https://dummyimage.com/600x400/000/fff',
    bio: 'Lorem ipsum dolor sit amet,
    consectetur adipiscing elit. Pellentesque nulla nunc, 
    lacinia sed volutpat ut, tristique et tortor. 
    Proin a nulla lorem. Duis ac nunc lectus. Ut non felis id elit tempor gravida.
    Aenean varius sem vel tellus elementum,
    in eleifend mauris eleifend. Donec at tempor libero,
    et maximus magna. Nulla vehicula convallis nulla.
    Duis arcu turpis, egestas ultrices est at, scelerisque lobortis est.',
    posts_counter: 0, email: 'salah1@bar.com', password: '123456')
    
#     name: 'mohammed',
#     photo: 'https://dummyimage.com/600x400/000/fff' ,
#     bio: 'Lorem ipsum dolor sit amet,
#     consectetur adipiscing elit. Pellentesque nulla nunc, 
#     lacinia sed volutpat ut, tristique et tortor. 
#     Proin a nulla lorem. Duis ac nunc lectus. Ut non felis id elit tempor gravida.
#     Aenean varius sem vel tellus elementum,
#     in eleifend mauris eleifend. Donec at tempor libero,
#     et maximus magna. Nulla vehicula convallis nulla.
#     Duis arcu turpis, egestas ultrices est at, scelerisque lobortis est.',
#     posts_counter: 0)
    
#    tom = User.create!(
#     name: 'tom',
#     photo: 'https://dummyimage.com/600x400/000/fff',
#     bio: 'Lorem ipsum dolor sit amet,
#     consectetur adipiscing elit. Pellentesque nulla nunc, 
#     lacinia sed volutpat ut, tristique et tortor. 
#     Proin a nulla lorem. Duis ac nunc lectus. Ut non felis id elit tempor gravida.
#     Aenean varius sem vel tellus elementum,
#     in eleifend mauris eleifend. Donec at tempor libero,
#     et maximus magna. Nulla vehicula convallis nulla.
#     Duis arcu turpis, egestas ultrices est at, scelerisque lobortis est.',
#     posts_counter: 0)
   
   post1 = mohammed.posts.create!(title: 'Ruby and Rails 1', text: 'this is first post about Ruby and Rails! 1', comments_counter: 0, likes_counter: 0)
   post2 = mohammed.posts.create!(title: 'Ruby and Rails 2', text: 'this is first post about Ruby and Rails! 2', comments_counter: 0, likes_counter: 0)
   post3 = mohammed.posts.create!(title: 'Ruby and Rails 3', text: 'this is first post about Ruby and Rails! 3', comments_counter: 0, likes_counter: 0)
   post4 = mohammed.posts.create!(title: 'Ruby and Rails 4', text: 'this is first post about Ruby and Rails! 4', comments_counter: 0, likes_counter: 0)
   post5 = mohammed.posts.create!(title: 'Ruby and Rails 5', text: 'this is first post about Ruby and Rails! 5', comments_counter: 0, likes_counter: 0)
   post6 = tom.posts.create!(title: 'Never ending fun', text: 'this is second post but I don\'t think I should create another post again', comments_counter: 0, likes_counter: 0)
   post7 = tom.posts.create!(title: 'The end of the world', text: 'it all around the corner', comments_counter: 0, likes_counter: 0)
   
   mohammed.comments.create!(text: 'really nice post Michael', post: post1)
   mohammed.comments.create!(text: 'Absolutely amazing 1', post: post1)
   mohammed.comments.create!(text: 'Absolutely amazing 2', post: post1)
   mohammed.comments.create!(text: 'Absolutely amazing 3', post: post1)
   mohammed.comments.create!(text: 'Absolutely amazing 4', post: post1)
   mohammed.comments.create!(text: 'Absolutely amazing 5', post: post1)
   tom.comments.create!(text: 'Well Done 👏👏👏', post: post1)
   tom.comments.create!(text: 'Love 💓 it!!!', post: post1)
   tom.comments.create!(text: 'I am with you to the bone man!', post: post1)

   
