json.extract! avaliacao, :id, :pontos, :observacoes, :aluno_id, :atividade_id, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)
