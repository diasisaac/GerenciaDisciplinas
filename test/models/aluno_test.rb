require "test_helper"

class AlunoTest < ActiveSupport::TestCase
  test "Deve salvar Aluno corretamente" do
    turma = Turma.new nome: '8D',
                            ano_letivo: 2022
    turma.save

    aluno = Aluno.new  nome: "8A",
                       turma: turma

    assert aluno.save
  end

  test "Nao deve salvar Aluno sem nome" do
    turma = Turma.new nome: '8D',
                      ano_letivo: 2022
    turma.save

    aluno = Aluno.new turma: turma

    assert_not aluno.save
  end
end
