require 'minitest/autorun'
require 'minitest/pride'

class AttendeeTest < Minitest::Test
  def test_it_exists
    attendee = Attendee.new(name: 'Megan', budget: '$50')

    assert_instance_of Attendee, attendee
  end

  def test_it_has_attributes
    attendee = Attendee.new(name: 'Megan', budget: '$50')

    assert_equal_to 'Megan', attendee.name
    assert_equal_to 50, attendee.budget
  end
end
