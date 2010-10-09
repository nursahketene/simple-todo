# Works only if you do NOT have the require cucumber step in your Rakefile
namespace :ci do
  namespace :setup do
    @reports_dir = ENV['CI_REPORTS'] || 'features/reports'

    task :cucumber_report_cleanup do
      rm_rf @reports_dir
    end

    task :cucumber => :cucumber_report_cleanup do
      extra_opts = "--format junit --out #{@reports_dir}"
      ENV["CUCUMBER_OPTS"] = "#{ENV['CUCUMBER_OPTS']} #{extra_opts}"
    end
  end
end

namespace :hudson do
  task :rspec => ["hudson:setup:rspec", 'spec']

  namespace :setup do
    task :pre_ci do
      ENV["CI_REPORTS"] = 'spec/reports'
      #gem 'ci_reporter'
      require 'ci/reporter/rake/rspec'
    end
    task :rspec => [:pre_ci, "ci:setup:rspec"]
  end
end
