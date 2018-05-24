require "test_helper"

class CommentExtractorTest < Minitest::Test
  def test_that_extract_comment
    code = <<-FOO
def hoge
  # this is comment
  pp"this is test"
end
    FOO
    pp
    assert_equal('# this is comment',CommentExtractor.extract(code)[0][0].text)
  end
end
