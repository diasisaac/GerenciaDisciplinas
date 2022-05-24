class Aluno < ApplicationRecord
  belongs_to :turma

  validates :nome, presence:true
end
