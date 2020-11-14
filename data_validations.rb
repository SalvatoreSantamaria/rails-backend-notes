# Ensure data meets requirements before saving to database
# Validation code should reside in models
ActiveRecord::Validations

#Validations are just making sure that attributes follow the rules

#so, for 
validates_presence_of :name :on(:save, :create, :update)
#the name portion of the model is required to be present- and it won't save to the db. Only runs when saving, creating, or updating

validates_presence_of
validates_length_of :name, :within => 3..40 #:is #:minimum #:maximum
validates_numericality_of : position, :greater_than => 0 # equal_to #:greater_than #:less_than
validates_inclusion_of
validates_exclusion_of
validates_format_of
validates_uniqueness_of
validates_acceptance_of
validates_confirmation_of
validates_associated

####custom methods:
class User < ApplicationRecord
validate :custom_method #call the validation

private
def custom_method
  if Time.now.wday == 3 #if the day is wednesday
    errors.add(:name, 'this is the message')
  end
end