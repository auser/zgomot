##############################################################################################################
module Zgomot::Midi

  #####-------------------------------------------------------------------------------------------------------
  class Channel

    #.........................................................................................................
    include Zgomot::Comp::Transforms
    
    #.........................................................................................................
    @channels = []
    
    #####-------------------------------------------------------------------------------------------------------
    class << self
      
      #.........................................................................................................
      attr_reader :channels

      #.........................................................................................................
      def ch(num=0, opts={})
        (channels << new(is_valid(num), opts)).last
      end

      #.........................................................................................................
      def is_valid(num)
        nums = [num].flatten
        valid = nums.select{|n| 0 <= n and n <= 15 }
        valid.length.eql?(nums.length) ? num : raise(Zgomot::Error, "channel number invalid: 1<= channel <= 16")
      end

      #.........................................................................................................
      def release(chan)
        channels.delete_if{|c| c.eql?(chan)}
      end

    #### self
    end
    
    #####-------------------------------------------------------------------------------------------------------
    attr_reader :number, :clock, :pattern
    
    #.........................................................................................................
    def initialize(num, opts={})
      @number = num
      @clock = Clock.new
      @pattern = []
    end

    #.........................................................................................................
    def <<(pat)
      pat = Zgomot::Comp::Pattern.new(pat) unless pat.kind_of?(Zgomot::Comp::Pattern)
      pat.seq.each {|n| add_at_time(n)}; self
    end

    #.........................................................................................................
    def method_missing(method, *args, &blk )
      pattern.send(method, *args, &blk)
    end

    #.........................................................................................................
    def length_to_sec
      clock.current_time.to_f
    end

  private
    
    #.........................................................................................................
    def add_at_time(item)
      item.time = clock.current_time
      item.channel = number
      @pattern << item.clone
      clock.update(item.length_to_sec)
    end
  
  #### Channel
  end

#### Zgomot::Midi 
end
