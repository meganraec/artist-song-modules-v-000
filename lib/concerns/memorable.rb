module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module Instance methods
    def initialize(name)
      @name = name
    end
  end
end
