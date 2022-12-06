class Role < ApplicationRecord
  has_many :role_grants, dependent: :destroy
  has_many :grants, through: :role_grants, dependent: :destroy
end
