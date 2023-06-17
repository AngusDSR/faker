# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerTrainStation < Test::Unit::TestCase
  def setup
    @tester = Faker::Travel::TrainStation
  end

  def test_name_uk
    assert_match(/\w+/, @tester.name(type: 'metro', region: 'united_kingdom'))
  end

  def test_name_esp
    assert_match(/\w+/, @tester.name(type: 'railway', region: 'spain'))
  end

  def test_name_us
    assert_match(/\w+/, @tester.name(type: 'metro', region: 'united_states'))
  end

  def test_name_no_args
    assert_match(/\w+/, @tester.name)
  end

  # test for region only

  # test for type only

  def test_name_with_invalid_arguments
    assert_raises ArgumentError do
      @tester.name(bee: 'bzzz', fish: 'blub')
    end
  end
end
