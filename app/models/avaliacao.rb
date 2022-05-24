class Avaliacao < ApplicationRecord
  belongs_to :aluno
  belongs_to :atividade

  validates :pontos, presence:true, numericality: { in: 0..10 }

end
