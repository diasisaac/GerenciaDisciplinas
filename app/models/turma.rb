class Turma < ApplicationRecord

  validates :nome, presence: true, uniqueness: true
  validates :ano_letivo, presence: true , uniqueness: true
end
