Like.destroy_all
Comment.destroy_all
Review.destroy_all
User.destroy_all

Book.destroy_all
Author.destroy_all


puts "Creating Author"
# Author : Name + biography
author = Author.create!(name: 'Toto', biography: "jiaezjioaze oijazeoija oiiajze ouhazi")

puts "Creating Book"
# Book : Title + Summary + Author_id
book = Book.create!(title: 'ijijijij', summary: 'izaejiazjeiaezjiazejazijeiazjiazejazieja', author: author)
Book.create!(title: 'Book1', summary: 'izaejiazjeiaezjiazejazijeiazjiazejazieja', author: author)


puts 'Creating users'
user = User.new(name:'bob')
user2 = User.new(name:'georges')
user3 = User.new(name: 'paul')
user4 = User.new(name: 'John')


puts "Creating Reviews"
# Review : Subject + Content + Book_id
review = Review.create!(subject: 'Cool', content: 'blalblbllblblbl', book: book, user: user3)
Review.create!(subject: 'trolololo', content: 'ziazjeiaziazizaiaziaz', book: book, user: user4)


puts "Creating comments"

com = Comment.create!(content:'I don\'t care', review: review, user: user4)
Comment.create!(content:'I agree', review: review, user: user)
Comment.create!(content:'I disagree', review: review, user: user2)
Comment.create!(content:'I do not agree', review: review, user: user3)



puts "Creating likes"
#
Like.create!(count: 1, user: user, comment: com )
Like.create!(count: 1, user: user2, comment: com )
# &1  Rest  N;Rev ::: rest:ref

# add link comment&user

# Book.first.reviews.first.comments.first.likes.first.user.name
