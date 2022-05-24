class Aluno < ApplicationRecord
  belongs_to :turma

  validates :nome, presence: true

  has_many :atividades
  has_many :disciplinas

end
