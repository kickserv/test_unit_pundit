namespace :test do

  Rails::SubTestTask.new(policies: 'test:prepare') do |t|
    t.libs << 'test'
    t.pattern = 'test/policies/**/*_test.rb'
  end

end

Rake::Task[:test].enhance { Rake::Task['test:policies'].invoke }