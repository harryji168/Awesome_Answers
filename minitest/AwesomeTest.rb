require "minitest/autorun"


# To create a grouping of tests with MiniTest,
# create a class whose name ends in `Test` and inherits from MiniTest::Test
class AwesomeTest < MiniTest::Test

    # To run tests (with minitest/autorun) you must start the method name with test_
    def test_something
        
        assert_equal(3, 1+1)
    end
    

end