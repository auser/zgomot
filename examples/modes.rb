require 'rubygems'
require "#{File.dirname(__FILE__)}/../lib/zgomot"

#.........................................................................................................
before_start do
  Zgomot.logger.level = Logger::DEBUG
end

#.........................................................................................................
str 'scale', [k([:A,4],nil,4), k([:A,4],nil,4).reverse!.shift, n(:R)], :lim=>6 do |time, pattern|
  Zgomot.logger.info "TONIC: [A,4], MODE: #{count-1}"
  ch << pattern.mode!(count)
end

#.........................................................................................................
play