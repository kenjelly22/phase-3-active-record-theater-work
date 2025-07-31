class Audition < ActiveRecord::Base
  belongs_to :role

     def role
       Role.find(role_id)
     end

    # Audition#call_back will change the the hired attribute to true


end
