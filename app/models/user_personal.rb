class UserPersonal < ApplicationRecord
  belongs_to :user

  def computed_age(at: Date.today)
    return nil if birthday.blank?

    (at.strftime('%Y%m%d').to_i - birthday.strftime('%Y%m%d').to_i) / 10_000
  end
end
