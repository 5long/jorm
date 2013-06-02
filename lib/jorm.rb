require "jorm/version"

require "jorm/folder"

module Jorm
  PATTERN = /([a-z]{2,5})-?([0-9]{3,5})/i
  PATTERN_NORMALIZED = /\A[a-z]{2,5}[0-9]{3,5}\z/

  def self.normalize_id input_jav_id
    if m = input_jav_id.match(PATTERN)
      _, category, num = *m
      "#{category.downcase}#{num}"
    end
  end

  def self.normalized? input_jav_id
    !!(input_jav_id =~ PATTERN_NORMALIZED)
  end

  def self.normalize_folder *folders
    folders.each do |f|
      Folder.new(f).normalize!
    end
  end
end
