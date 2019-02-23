require "./Wrapper"
require 'test/unit'

class KataTest < Test::Unit::TestCase
  @@wrapper = Wrapper::Wrapper.new()

  def test_wrapper_exists()
    assert_instance_of(Wrapper::Wrapper, @@wrapper)
  end

  def test_string_smaller_than_columnNum()
    string = @@wrapper.wrap("word", 2)
    assert_equal("word",string)
  end

  def test_separates_String_based_on_line_breaks()
    string = @@wrapper.wrap("test my mettle", 2)
    assert_equal("test\nmy\nmettle" , string )
  end

  def test_separate_string_based_on_columnNum()
    string = @@wrapper.wrap("test my mettle", 7)
    assert_equal("test my\nmettle", string )
  end

  def test_columnNum_higher_than_word_in_two_word_string()
    string = @@wrapper.wrap("hello world", 6)
    assert_equal("hello\nworld", string)
  end

  def test_advanced_word_manipulation()
    string = @@wrapper.wrap("a lot of words for a single line", 10)
    assert_equal("a lot of\nwords for\na single\nline", string)
  end

  def test_this_is_a_test()
    string = @@wrapper.wrap("this is a test", 4)
    assert_equal("this\nis a\ntest", string)
  end
end
