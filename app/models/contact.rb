class Contact < ActiveRecord::Base
  def complete_name
    "#{self.first_name} #{self.last_name}"
  end
end
