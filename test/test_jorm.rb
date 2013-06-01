require "mt_helper"

require "jorm"

describe Jorm do
  def assert_normalize_to input, expected
    normalized = ::Jorm.normalize_id(input)
    unless normalized == expected
      fail "Expected #{expected}, got #{normalized}"
    end
  end

  describe ".normalize_id" do
    it "normalize a dirty jav id to a clean one" do
      assert_normalize_to '0222-star404avi', 'star404'
    end
  end
end
