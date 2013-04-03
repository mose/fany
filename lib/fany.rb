require "fany/version"

module Fany

  attr_accessor :config

  def self.config
    @@config
  end

  def self.config=(c)
    @@config = c
  end

end
