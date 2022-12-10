class User < ApplicationRecord
  has_one :user_personal

  enum sex: { unknown: 0, male: 1, female: 2, not_applicable: 9 }

  before_create do
    generate_gid
    set_age
  end

  def set_age
    true
  end

  def generate_gid
    self.gid = SecureRandom.uuid
  end
end
