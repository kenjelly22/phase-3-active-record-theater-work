class Role < ActiveRecord::Base
  has_many :auditions

    def role_auditions
      Audition.where(role_id: id)
    end

    def role_actors
      role_auditions.map do |audition|
        audition.actor
      end
    end
    
    def role_locations
      role_auditions.map do |audition|
        audition.location
      end
    end

 # Role#lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
    
    

    
    # Role#understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'



end
