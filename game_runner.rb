require_relative "lib/command_line_app"
require_relative "lib/game"

Game.new($stdin, $stdout).run
