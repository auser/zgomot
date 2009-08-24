##############################################################################################################
module Zgomot::Comp

  #####-------------------------------------------------------------------------------------------------------
  class Patterns

    #####-------------------------------------------------------------------------------------------------------
    class << self
    
      #.......................................................................................................
      def n(pc, oct=4, len=4, v=0.6)
        Zgomot::Midi::Note.new(:pitch => [pc, oct], :length => len, :velocity => (127.0*v).to_i)
      end

      #.........................................................................................................
      def c(ps, len=4, v=0.6)
        Chords.new(:pitches => ps, :length => len, :velocity => (127.0*v).to_i)
      end

      #.........................................................................................................
      def k(tonic, mode)
        Key.new(tonic, mode)
      end

    #### self
    end

  #### Patterns
  end

#### Zgomot ::Comp
end
