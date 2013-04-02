module Fany
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.expand_path('../templates', __FILE__)

    unless ActiveRecord::Base.connection.table_exists? 'translations'
      Rails::Generators.invoke('i18n:active_record:install')
    end

  end
end