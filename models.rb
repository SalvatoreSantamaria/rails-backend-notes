#fat model, skinny controller - Business logic goes in model. user actions go in controller!

  # helps to DRY
  # model methods can be called from anywhere in the App
  # model methods can be called from the rails console
  # model methods are easier to test
  # code is easier to locate and maintain

class User < ApplicationRecord 
  def full_name
    [first_name, last_name].join(' ')
  end


  Product.where(sold_out: false).count 


  SELECT #return activerecord objects that are created 
  product = Product.select(:id, :name).first
  #=> Product id: 1, name: "Coffee Mug"
  product.id
  # => 1
  product.name
  # => "Coffee Mug"
  product.description
  # => ActiveModel::MissingAttributeError

  PLUCK #better than select, it return an array of data
  product.where(active: true).pluck(:id, :name)
  # => [[1, "Coffee Mug"], ...]

  class Book,or (BookClub) you should have a database table called book or book_clubs
    and for Person it should be people
    
    
    Creating Models
    All you have to do is to subclass the ApplicationRecord class and you're good to go:
    
class Book < ApplicationRecord
end

This will create a Product model, mapped to a products table at the database. 


//create
user = User.new
user.name = "David"
user.occupation = "Code Artist"
user.save //will commmit to db


# return a collection with all users
users = User.all
# return the first user
user = User.first
# return the first user named David
david = User.find_by(name: 'David')


//update

# return a collection with all users
users = User.all
# return the first user
user = User.first
# return the first user named David
david = User.find_by(name: 'David')

//delete

user = User.find_by(name: 'David')
user.destroy


//validations

class User < ApplicationRecord
  validates :name, presence: true
end