require 'rubygems'
require "#{File.dirname(__FILE__)}/../lib/zgomot"

#.........................................................................................................
before_start do
  Zgomot.logger.level = Logger::DEBUG
end

#.........................................................................................................
str 'scale', k([:A,4],nil,4)[7,5,3,1], :lim=>6 do |time, pattern|
  ch << pattern.mode!(count-1)
end

#.........................................................................................................
play