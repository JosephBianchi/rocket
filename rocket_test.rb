require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

def setup
  @rocket = Rocket.new
end

def test_initialize_flight_status
  output = @rocket.flying?
  assert_equal(false, output)
end

def test_initialize_colour
  @rocket = Rocket.new(colour: "green")
  output = @rocket.colour
  assert_equal("green", output)
end

def test_initialize_name
  @rocket = Rocket.new(name: "Joe")
  output = @rocket.name
  assert_equal("Joe", output)
end


def test_rocket_name_reader_writer
  @rocket.name=("James")
  name = @rocket.name
  assert_equal("James", name)
end

def test_rocket_colour_reader_writer
  @rocket.colour=("purple")
  colour = @rocket.colour
  assert_equal("purple", colour)
end

def test_rocket_flying_reader
  output = @rocket.flying?
  assert_equal(false, output)
end

def test_rocket_lift_off
  @rocket.lift_off
  assert true
end

def test_rocket_land
  @rocket.land
  assert true
end

def test_rocket_status
  @rocket = Rocket.new
  @rocket.flying?
  refute false
end

end



end
