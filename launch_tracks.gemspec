Gem::Specification.new do |s|
  s.name = "launch_tracks"
  s.version = "0.1.0"
  s.summary = "Start Rack apps on demand with launchd."
  s.description = "Automaticlly start Rack applications on demand using launchd."
  s.files = Dir["lib/**/*.rb"] << "README.rdoc"
  s.require_path = "lib"
  s.executables << "launch_tracks"
  s.rdoc_options << "--main" << "README.rdoc" << "--charset" << "utf-8"
  s.extra_rdoc_files = ["README.rdoc"]
  s.author = "Matthew Sadler"
  s.email = "mat@sourcetagsandcodes.com"
  s.homepage = "http://github.com/matsadler/launch_tracks"
  s.add_dependency("launch", "~> 2.0")
  s.add_dependency("tracks", "~> 0.1")
  s.add_dependency("rack-idle", "~> 0.1")
end
