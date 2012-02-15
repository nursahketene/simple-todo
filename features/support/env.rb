require 'cucumber/rails'

Capybara.default_selector = :css

ActionController::Base.allow_rescue = false

#Before('@no-txn,@selenium,@culerity,@celerity,@javascript') do
#  DatabaseCleaner.strategy = :truncation
#end

#Before('~@no-txn', '~@selenium', '~@culerity', '~@celerity', '~@javascript') do
#  DatabaseCleaner.strategy = :transaction
#end
