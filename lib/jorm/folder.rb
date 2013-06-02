require "fileutils"
require "pathname"

module Jorm
  class Folder
    attr_reader :path

    def initialize path
      @path = ::Pathname.new path
    end

    def normalized?
      Jorm.normalized? path.to_s
    end

    def normalize!
      return if normalized?
      FileUtils.mv path, Jorm.normalize_id(path.to_s)
    end
  end
end
