require 'rubygems'
require "#{File.dirname(__FILE__)}/../lib/zgomot"

#.........................................................................................................
before_start do
  Zgomot.logger.level = Logger::DEBUG
end

#.........................................................................................................
str 'scale', [k([:A,4],:lydian,4), k([:A,4],:lydian,4).reverse!.shift, n(:R)], :lim=>3 do |time, pattern|
  ch << pattern
end

#.........................................................................................................
play
