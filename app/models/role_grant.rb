class RoleGrant < ApplicationRecord
  belongs_to :role
  belongs_to :grant
end
