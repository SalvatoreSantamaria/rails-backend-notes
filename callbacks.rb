# ActiveRecord give way to intervene in an objects life cycle - like it pauses before/after an object is created/updated/destroyed. 
# IE a 'code hook'

# before_validation
# after_validation

# Database Interaction
# before_save 
# before_create
# before_update
# before_destroy
# after_save 
# after_create
# after_update
# after_destroy
# after_commit

# -things we can do: 
#   set values for current record 
#   create/update/destroy other records
#   perform clean up or housekeeping tasks
#   log information
#   send an email or make an api call

class Customer < ApplicationRecord
  before_validation :format_phone_function
  before_save :puts_function, 
    if: :admin_created_phone? #only runs if true, ? is best practice for returning boolean/true/false
  after_commit :notify_admins

  private

  def format_phone_function
  end

  def puts_function
  end

  def if_admin_created_phone?
  end

  def notify_admins_function
  end
end

