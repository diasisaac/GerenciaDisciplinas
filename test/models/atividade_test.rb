require "test_helper"

class AtividadeTest < ActiveSupport::TestCase
  test "Criar atividade corretamente" do
    turma = Turma.new nome:"3A",
                     ano_letivo:"2022"
    turma.save

    disciplina = Disciplina.new nome:'Filosofia',
                                ano_letivo:'2022',
                                turma_id:turma.id
    disciplina.save

    atividade = Atividade.new titulo:"Refletir",
                              descricao:"Reflita a filosofia de Engenharia de Software",
                              bimestre:"1",
                              data:"2022-06-30",
                              disciplina_id:disciplina.id
    assert atividade.save
  end

  test "Criar atividade sem data" do
    turma = Turma.new nome:"3A",
                      ano_letivo:"2022"
    turma.save

    disciplina = Disciplina.new nome:'Filosofia',
                                ano_letivo:'2022',
                                turma_id:turma.id
    disciplina.save

    atividade = Atividade.new titulo:"Refletir",
                              descricao:"Reflita a filosofia de Engenharia de Software",
                              bimestre:"1",
                              disciplina_id:disciplina.id
    assert_not atividade.save
  end
end
