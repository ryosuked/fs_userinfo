class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_many :manager_roles, dependent: :destroy
  has_many :roles, through: :manager_roles, dependent: :destroy
  has_many :grants, through: :roles, dependent: :destroy
end
