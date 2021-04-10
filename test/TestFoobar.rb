require_relative '../dev/foobar'
require 'test/unit'

#Must inherit from TestCase
class TestFoobar < Test::Unit::TestCase

    #Tests must begin with 'test' or 'test_'
    def test_givenAPersonUnderAge50_whenTheIsOldMethodIsCalled_thenTheMethodShouldReturnFalse
        #Arrange
        p = Foobar::Person.new("Matt","Z",39,180000,"Software Engineer")
        #Act
        result = p.is_old?
        #Assert
        assert_equal(false, result, "Person has been set to age 39. The is_old? method should return false for all ages under 50.")
    end

    def test_givenAPersonOverAge50_whenTheIsOldMethodIsCalled_thenTheMethodShouldReturnTrue
        p = Foobar::Person.new("Gina","X",55,100000,"Test Engineer")
        result = p.is_old?
        assert_equal(true, result, "Person has been set to age 55. The is_old? method should return true for all ages over 50.")
    end

    def test_givenTwoPersonAreCreated_thenTheDataOfBothPersonsIsStoredCorrectly
        e = Foobar::Person.new("Eric","A",31,130000,"Architect")
        d = Foobar::Person.new("Daniel","W",29,75000,"Store Manager")
        assert_equal("Eric", e.first_name)
        assert_equal("A", e.last_name)
        assert_equal(31, e.age)
        assert_equal(130000, e.salary)
        assert_equal("Architect", e.profession)
        assert_equal("Daniel", d.first_name)
        assert_equal("W", d.last_name)
        assert_equal(29, d.age)
        assert_equal(75000, d.salary)
        assert_equal("Store Manager", d.profession)
    end

end