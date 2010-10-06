require 'active_record/fixtures'

Fixtures.reset_cache
fixtures_folder = "#{::Rails.root}/spec/fixtures"
fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
Fixtures.create_fixtures(fixtures_folder, fixtures)
