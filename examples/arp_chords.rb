require 'rubygems'
require "#{File.dirname(__FILE__)}/../lib/zgomot"

#.........................................................................................................
before_start do
  Zgomot.logger.level = Logger::DEBUG
end

#.........................................................................................................
str 'arp', cp([:B,3],:ionian,:l=>4)[7,5,3,1].arp!(32), :lim=>1 do |time, pattern|
  ch << pattern
end

#.........................................................................................................
play
