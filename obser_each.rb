watch('spec/.*\/.*\_spec.rb') do |m|
  system "clear"
  system "bundle exec rspec #{m}"
end
