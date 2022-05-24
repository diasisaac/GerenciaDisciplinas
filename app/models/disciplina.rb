class Disciplina < ApplicationRecord
  belongs_to :turma

  validates :nome, presence: true , uniqueness: true
  validates :ano_letivo, presence: true, comparison: {greater_than_or_equal_to: 2020}

  has_many :atividades
  has_many :alunos, through: :turma
end
