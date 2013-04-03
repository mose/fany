require "fany/version"

module Fany

  attr_accessor :user_class, :config

  def self.user_class
    @@user_class.constantize
  end

end
