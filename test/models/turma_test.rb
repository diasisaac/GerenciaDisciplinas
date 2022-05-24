require "test_helper"

class TurmaTest < ActiveSupport::TestCase
  test "Deve salvar Turma corretamente" do
    turma = Turma.new  nome: "8A",
                        ano_letivo: "2025"

    assert turma.save
  end
  test "Nao deve salvar Turma sem nome" do
    turma = Turma.new ano_letivo: "2025"

    assert_not turma.save
  end
end
