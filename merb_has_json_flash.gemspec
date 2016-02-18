Gem::Specification.new do |s|
  s.name = "merb_has_json_flash"
  s.version = "1.1"
  s.summary = "Rails' 'flash' session notification system ported to Merb, serialized as JSON"
  s.email = "ben@benlog.org"
  s.homepage = "http://github.com/bentlegen/merb_has_json_flash"
  s.description = s.summary
  s.has_rdoc = false
  s.authors = ["Michael D. Ivey", "Jeremy Nicoll", "Ben Vinegar"]
  s.files = ["LICENSE", "Rakefile", "README", "TODO", "lib/merb_has_json_flash.rb",
    "lib/merb_has_json_flash/controller_extension.rb",
    "lib/merb_has_json_flash/flash_hash.rb",
    "lib/merb_has_json_flash/helper.rb",
    "spec/merb_has_json_flash/controller_extension_spec.rb",
    "spec/merb_has_json_flash/flash_hash_spec.rb",
    "spec/spec_helper.rb"]
  s.test_files = [  "spec/merb_has_json_flash/controller_extension_spec.rb",
    "spec/merb_has_json_flash/flash_hash_spec.rb",
    "spec/spec_helper.rb"]
  s.add_dependency("merb-core", ["> 0.9.0"])
end
