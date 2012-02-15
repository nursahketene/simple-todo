load(Rails.root.join("db", "seeds.rb"))

Before('@javascript') do
  DatabaseCleaner.start
end

After('@javascript') do
  DatabaseCleaner.clean
end
