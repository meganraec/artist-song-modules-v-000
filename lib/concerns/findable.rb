module Findable
  def self.find_by_name(name)
    self.class.all.detect {|x| x.name == name}
  end
end
