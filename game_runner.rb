require_relative "lib/game"
require_relative "lib/command_line_app"

Game.new($stdin, $stdout).run
