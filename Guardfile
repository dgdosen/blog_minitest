# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'minitest' do
  # with Minitest::Unit
  watch(%r|^test/test_(.*)\.rb|)
  watch(%r|^test/controllers/test_(.*)\.rb|)
  watch(%r|^test/specs/test_(.*)\.rb|)
  watch(%r|^test/models/test_(.*)\.rb|)
  watch(%r|^test/models/test_(.*)\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r|^test/test_helper\.rb|)    { "test" }
  watch(%r|^test/minitest_helper\.rb|)    { "test" }

  #with Minitest::Spec
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r|^lib/(.*)\.rb|)            { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r|^spec/spec_helper\.rb|)    { "spec" }

end
