require "test_helper"

class DisciplinaTest < ActiveSupport::TestCase
  test "Criar disciplina corretamente" do
    turma = Turma.new nome: '8D',
                      ano_letivo: '2022'

    assert turma.save

    disciplina = Disciplina.new nome:'Matematica',
                                ano_letivo:'2023',
                                turma_id: turma.id
    assert disciplina.save
  end

  test "Criar disciplina sem campo nome" do
    turma = Turma.new nome: '8D',
                      ano_letivo: '2022'

    assert turma.save

    disciplina = Disciplina.new ano_letivo:'2023',
                                turma_id: turma.id
    assert_not disciplina.save
  end
end
