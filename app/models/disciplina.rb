class Disciplina < ApplicationRecord
  belongs_to :turma

  validates :nome, presence: true , uniqueness: true
  validates :ano_letivo, presence: true
end
