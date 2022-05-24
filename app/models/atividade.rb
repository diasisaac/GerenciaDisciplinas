class Atividade < ApplicationRecord
  belongs_to :disciplina

  validates :titulo, presence: true, length: {minimum: 5, too_short: "tamanho minimo 5 caracteres", maximum: 20, too_long: "tamanho maximo de 20 caracteres"}
  validates :descricao, presence: true
  validates :bimestre, presence: true, numericality: true
  validates :data, presence: true

end
