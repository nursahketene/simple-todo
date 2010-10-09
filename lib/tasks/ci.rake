namespace :hudson do
  task :rspec => ["hudson:setup:rspec", 'spec']

  namespace :setup do
    task :pre_ci do
      ENV["CI_REPORTS"] = 'spec/reports'
      gem 'ci_reporter'
      require 'ci/reporter/rake/rspec'
    end
    task :rspec => [:pre_ci, "ci:setup:rspec"]
  end
end
