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