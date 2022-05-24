class Turma < ApplicationRecord

  validates :nome, presence: true, uniqueness: true
  validates :ano_letivo, presence: true , uniqueness: true

  has_many :alunos
  has_many :disciplinas
  has_many :atividades
end
