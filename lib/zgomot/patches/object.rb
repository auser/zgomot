##############################################################################################################
class Object  

  #.......................................................................................................
  def define_meta_class_method(name, &blk)
    (class << self; self; end).instance_eval {define_method(name, &blk)}
  end

#### Object
end

