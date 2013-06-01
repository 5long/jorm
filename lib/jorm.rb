require "jorm/version"

module Jorm
  PATTERN = /([a-z]{2,5})-?([0-9]{3,5})/i

  def self.normalize_id input_jav_id
    if m = input_jav_id.match(PATTERN)
      _, category, num = *m
      "#{category.downcase}#{num}"
    end
  end
end
