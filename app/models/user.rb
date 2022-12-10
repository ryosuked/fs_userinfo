class User < ApplicationRecord
  has_one :user_personal

  enum sex: { unknown: 0, male: 1, female: 2, not_applicable: 9 }

  before_create do
    generate_gid
  end

  def generate_gid
    self.gid = SecureRandom.uuid
  end
end
