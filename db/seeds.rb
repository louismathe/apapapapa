Review.destroy_all
Book.destroy_all
Author.destroy_all


puts "Creating Author"
# Author : Name + biography
author = Author.create!(name: 'Toto', biography: "jiaezjioaze oijazeoija oiiajze ouhazi")

puts "Creating Book"
# Book : Title + Summary + Author_id
book = Book.create!(title: 'ijijijij', summary: 'izaejiazjeiaezjiazejazijeiazjiazejazieja', author: author)
Book.create!(title: 'Book1', summary: 'izaejiazjeiaezjiazejazijeiazjiazejazieja', author: author)

puts "Creating Reviews"
# Review : Subject + Content + Book_id
review = Review.create!(subject: 'Cool', content: 'blalblbllblblbl', book: book)
Review.create!(subject: 'trolololo', content: 'ziazjeiaziazizaiaziaz', book: book)

puts "Creating comments"

com = Comment.create!(content:'I don\'t care', review: review)
Comment.create!(content:'I agree', review: review)
Comment.create!(content:'I disagree', review: review)
Comment.create!(content:'I do not agree', review: review)

# &1  Rest  N;Rev ::: rest:ref
