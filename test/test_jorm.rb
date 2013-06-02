require "mt_helper"

require "jorm"

describe Jorm do
  def assert_normalize_to input, expected
    normalized = ::Jorm.normalize_id(input)
    unless normalized == expected
      fail "Expected #{expected}, got #{normalized}"
    end
  end

  def assert_normazlied input
    fail "#{input} is not normalized" unless Jorm.normalized? input
  end

  describe ".normalize_id" do
    it "normalize a dirty jav id to a clean one" do
      assert_normalize_to '0222-star404avi', 'star404'
    end
  end

  describe ".normalized?" do
    it "determines if a jav id is already normalized" do
      assert_normazlied 'ebod096'
    end

    it "takes untrimmed jav id as unnormalized" do
      refute Jorm.normalized?("pgd438\n")
      refute Jorm.normalized?(" pgd438")
    end
  end
end
