require './test/test_helper'

class BobTest < Minitest::Test
  def test_it_exists
    assert_instance_of Bob, Bob.new("./data/bob_elements.csv")
  end

  def test_final_episode
    bob = Bob.new("./test/fixtures/bob_truncated.csv")

    assert_equal "S01E03", bob.final_episode
  end

  def test_paint_palette
    bob = Bob.new("./test/fixtures/bob_truncated.csv")

    paint_1 = mock('Paint')
    paint_2 = mock('Paint')

    bob.paint_palatte.push(paint_1, paint_2)

    assert_equal 2, bob.paint_palatte.count
  end

  def test_paint_colors
    bob = Bob.new("./test/fixtures/bob_truncated.csv")

    paint_1 = mock('Paint')
    paint_1.expects(:color).returns("Alizarin Crimson")

    paint_2 = mock('Paint')
    paint_2.expects(:color).returns("Van Dyke Brown")

    bob.paint_palatte.push(paint_1, paint_2)

    assert_equal ["Alizarin Crimson", "Van Dyke Brown"], bob.paint_colors
  end

  def test_paint_amount
    bob = Bob.new("./test/fixtures/bob_truncated.csv")

    paint_1 = mock('Paint')
    paint_1.stubs(:amount).returns(14)

    paint_2 = mock('Paint')
    paint_2.stubs(:amount).returns(48)

    bob.paint_palatte.push(paint_1, paint_2)

    assert_equal 62, bob.paint_amount
  end
end
