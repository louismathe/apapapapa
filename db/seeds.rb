Review.destroy_all
Book.destroy_all
Author.destroy_all


puts "Creating Author"
# Author : Name + biography
author = Author.create!(name: 'Toto', biography: "jiaezjioaze oijazeoija oiiajze ouhazi")

puts "Creating Book"
# Book : Title + Summary + Author_id
book = Book.create!(title: 'ijijijij', summary: 'izaejiazjeiaezjiazejazijeiazjiazejazieja', author: author)
book1 = Book.create!(title: 'Book1', summary: 'izaejiazjeiaezjiazejazijeiazjiazejazieja', author: author)

puts "Creating Reviews"
# Review : Subject + Content + Book_id
first_review = Review.create!(subject: 'Pas Cool', content: 'blalblbllblblbl', book: book)
second_review = Review.create!(subject: 'Génial', content: 'ziazjeiaziazizaiaziaz', book: book)
