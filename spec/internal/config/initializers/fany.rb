if File.exists?("config/fany.yml")
  Fany.config = OpenStruct.new(YAML.load_file("config/fany.yml")[Rails.env])
else
  puts "WARNING: create the configuration with 'rake fany:install', until then, the default config will be used"
  Fany.config = OpenStruct.new( use_db: true, inline_edits: true);
end

