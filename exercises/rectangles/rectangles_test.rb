gem 'minitest', '>= 5.0.0'
gem 'minitest-colorize'
require 'minitest/autorun'
require_relative 'rectangles.rb'

class RectangleTest < Minitest::Test

  def test_zero_area_1
    rectangle = Rectangle.new
    assert_equal 0, rectangle.count 
  end

  def test_zero_area_2
    line = ''
    rectangle = Rectangle.new
    assert_equal 0, rectangle.count(line) 
  end

  def test_zero_area_3
    line = ' '
    rectangle = Rectangle.new
    assert_equal 0, rectangle.count(line) 
  end

  def test_one_rectangle
    line = ["+-+", "| |", "+-+", ]
    rectangle = Rectangle.new
    assert_equal 1, rectangle.count(line) 
  end


  def test_two_rectangle_no_shared_parts
    line = ["  +-+", "  | |", "+-+-+", "| |  ", "+-+  " ]
    rectangle = Rectangle.new
    assert_equal 2, rectangle.count(line) 
  end

  def test_five_rectangles_three_region
    line = ["  +-+", "  | |", "+-+-+", "| | |", "+-+-+" ]
    rectangle = Rectangle.new
    assert_equal 5, rectangle.count(line) 
  end

  def test_incomplete_rectangles
    line = ["  +-+", "    |", "+-+-+", "| | -", "+-+-+" ]
    rectangle = Rectangle.new
    assert_equal 1, rectangle.count(line) 
  end

  def test_complicated
    line = ["+------+----+", "|      |    |", "+---+--+    |", "|   |       |", "+---+-------+" ]
    rectangle = Rectangle.new
    assert_equal 3, rectangle.count(line) 
  end

  def test_not_so_complicated
    line = ["+------+----+", "|      |    |", "+------+    |", "|   |       |", "+---+-------+" ]
    rectangle = Rectangle.new
    assert_equal 2, rectangle.count(line) 
  end
end










