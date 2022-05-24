require "test_helper"

class AvaliacaoTest < ActiveSupport::TestCase
    test "Criar avaliação corretamente" do
        turma = Turma.new nome:"5A",
                          ano_letivo:"2022"
        turma.save

        disciplina = Disciplina.new nome:'Inglrs',
                                    ano_letivo:'2022',
                                    turma_id:turma.id
        disciplina.save

        aluno= Aluno.new nome:"João Paulo",
                         turma_id:turma.id
        aluno.save

        atividade = Atividade.new titulo:"Verbos",
                                  descricao:"Vai ser dificil",
                                  bimestre:"1",
                                  data:"2022-10-10",
                                  disciplina_id:disciplina.id
        atividade.save

        avaliacao = Avaliacao.new pontos: '5',
                                  observacoes:"Errou muito",
                                  atividade_id:atividade.id,
                                  aluno_id:aluno.id
        assert avaliacao.save
    end
    test "Nao deve criar avaliação sem aluno" do
        turma = Turma.new nome:"5A",
                          ano_letivo:"2022"
        turma.save

        disciplina = Disciplina.new nome:'Inglrs',
                                    ano_letivo:'2022',
                                    turma_id:turma.id
        disciplina.save

        aluno= Aluno.new nome:"João Paulo",
                         turma_id:turma.id
        aluno.save


        atividade = Atividade.new titulo:"Verbos",
                                  descricao:"Vai ser dificil",
                                  bimestre:"1",
                                  data:"2022-10-10",
                                  disciplina_id:disciplina.id
        atividade.save


        avaliacao = Avaliacao.new pontos: '5',
                                  observacoes:"Errou muito",
                                  atividade_id:atividade.id

        assert_not avaliacao.save
    end
end
