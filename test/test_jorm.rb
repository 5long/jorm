require "mt_helper"

require "jorm"

describe Jorm do
  def assert_normalize_to input, expected
    normalized = ::Jorm.normalize_id(input)
    unless normalized == expected
      fail "Expected #{expected}, got #{normalized}"
    end
  end

  def assert_can_normazlie input
    fail "#{input} can not normalized" unless Jorm.can_normalize? input
  end

  describe ".normalize_id" do
    it "normalize a dirty jav id to a clean one" do
      assert_normalize_to '0222-star404avi', 'star404'
    end
  end

  describe ".can_normalize?" do
    it "determines if a jav id can be normalized" do
      assert_can_normazlie 'ebod-096'
    end
  end
end
