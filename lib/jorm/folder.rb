require "fileutils"
require "pathname"

module Jorm
  class Folder
    attr_reader :path

    def initialize path
      @path = ::Pathname.new path
    end

    def can_normalize?
      Jorm.can_normalize? path.to_s
    end

    def should_normalize?
      is_folder? && can_normalize?
    end

    def is_folder?
      path.directory?
    end

    def normalize!
      return unless should_normalize?
      FileUtils.mv path, Jorm.normalize_id(path.to_s)
    end
  end
end
