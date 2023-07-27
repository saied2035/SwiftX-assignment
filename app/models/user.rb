class User < ApplicationRecord
  has_many :records
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  validates :role, presence: true, inclusion:
  { in: %w[Manager manager User user Admin admin],
    message: 'is not included in the list. List is: [Manager, manager, User, user, Admin, admin]' }
  validates :password_confirmation, presence: true
end
