class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true , length: {minimum: 5, too_short: "Email com tamanho de 5 a 20 caracteres", maximum: 20, too_long: "Email com tamanho de 5 a 20 caracteres"}
end
