require "fileutils"
require "launch"
require "tracks"
require "rack/idle"

Rack::Handler.register("launch_tracks", "LaunchTracks")

module LaunchTracks
  
  def self.run(app, options={})
    app = Rack::Idle.new(app, :watch => "restart.txt")
    sockets = Launch::Job.checkin.sockets["http"]
    Tracks.new(app, options).listen(sockets.first)
  end
  
end
