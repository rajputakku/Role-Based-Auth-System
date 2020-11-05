class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :user_roles  
         has_many :roles, through: :user_roles 
         has_many :resources
  def is_super_admin?
    self.roles.pluck(:name).include?('super_admin')
  end 
  def is_admin?
    self.roles.pluck(:name).include?('admin')
  end 
end
