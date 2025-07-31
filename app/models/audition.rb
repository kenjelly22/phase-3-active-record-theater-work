class Audition < ActiveRecord::Base
  belongs_to :role

  def audition_role
    Role.find(role_id)
  end

  def call_back
    if hired == false
      update(hired: true)
    end
  end

end
