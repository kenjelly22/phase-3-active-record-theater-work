class Role < ActiveRecord::Base
  has_many :auditions

    def role_auditions
      Audition.where(role_id: id)
    end

    def role_actors
      role_auditions.map {|audition| audition.actor}
    end
    
    def role_locations
      role_auditions.map {|audition| audition.location}
    end

    def lead
      result = Audition.find_by(hired: true, role_id: id)
      result ? result : "No actor has been hired for this role."
    end

    def understudy
      result = Audition.where(hired: true, role_id: id).second
      result ? result : "No actor has been hired for understudy for this role"
    end

end
