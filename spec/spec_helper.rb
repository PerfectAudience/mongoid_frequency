require 'mongoid'
require 'database_cleaner'

RSpec.configure do |config|
	config.treat_symbols_as_metadata_keys_with_true_values = true
	config.run_all_when_everything_filtered = true
	config.filter_run :focus

	config.order = 'random'

	config.before(:suite) do
		DatabaseCleaner.strategy = :truncation
	end

	config.after(:each) do
		DatabaseCleaner.clean
	end
end

Mongoid.load!("spec/mongoid.yml", :test)
