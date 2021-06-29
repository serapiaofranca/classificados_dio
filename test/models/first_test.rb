require "test_helper"

class FirstTest < ActiveSupport::TestCase

    test "primeiro teste" do
        variavel = "Rogério"

        assert_equal "Rogério", variavel
    end 
end