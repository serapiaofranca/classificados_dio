require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  test "nome é obrigatório" do
    user = User.new(name: nil)

    user.save

    assert user.errors[:name].any?
  end
end
