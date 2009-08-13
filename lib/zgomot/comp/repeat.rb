##############################################################################################################
module Zgomot::Comp

  #####-------------------------------------------------------------------------------------------------------
  class Repeat

    #####-------------------------------------------------------------------------------------------------------
    class << self
      
      #.........................................................................................................
      def in_time(notes, times, opts={})
        (1..times).to_a.inject(Midi::Channel.create(opts[:chan])) do |c,i|
          notes.kind_of?(Array) ? c + notes : c << notes
        end
      end

      #### self
      end

  #### Repeat
  end

#### Zgomot ::Comp
end
