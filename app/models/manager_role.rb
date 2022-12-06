class ManagerRole < ApplicationRecord
  belongs_to :admin_user
  belongs_to :role
end
