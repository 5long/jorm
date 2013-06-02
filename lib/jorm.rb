require "jorm/version"

require "jorm/folder"

module Jorm
  PATTERN = /([a-z]{2,5})-?([0-9]{3,5})/i
  PATTERN_NORMALIZED = /\A[a-z]{2,5}[0-9]{3,5}\z/

  def self.normalize_id input_jav_id
    if m = can_normalize?(input_jav_id)
      _, category, num = *m
      "#{category.downcase}#{num}"
    end
  end

  def self.can_normalize? input_jav_id
    input_jav_id.match PATTERN
  end

  def self.normalize_folder *folders
    folders.each do |f|
      Folder.new(f).normalize!
    end
  end

  def self.already_normalized? input_jav_id
    !!(input_jav_id.match PATTERN_NORMALIZED)
  end
end
