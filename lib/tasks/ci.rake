begin
  
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
      
      task :rspec do
        ENV["CI_REPORTS"] = 'spec/reports'
        #gem 'ci_reporter'
        require 'ci/reporter/rake/rspec'
      end
    end
    
    task :build => ["ci:setup:rspec", "spec", "ci:setup:cucumber", "cucumber"]
  end
  
  task :ci => :cucumber
  
rescue LoadError
end