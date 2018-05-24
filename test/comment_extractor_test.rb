require "test_helper"

class CommentExtractorTest < Minitest::Test
  def test_that_extract_comment
    code = <<-FOO
def hoge
  # this is comment
  pp"this is test"
end
    FOO
    assert_equal('# this is comment',CommentExtractor.extract(code)[0].text)
  end
end
