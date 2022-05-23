require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "deve salvar Usuario corretamente" do
    usuario = User.new  email:'emailteste@gmail.com',
                        password: '123456'

    assert usuario.save
  end

  test "Nao deve salvar Usuario sem o email" do
    usuario = User.new password: '123456'

    assert_not usuario.save
  end
end
