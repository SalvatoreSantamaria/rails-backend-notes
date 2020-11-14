fat model, skinny controller

class User < ApplicationRecord 
  def full_name
    [first_name, last_name].join(' ')
  end