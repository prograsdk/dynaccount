module Modelable
  def self.find(id)
  end

  def self.all
  end

  def self.new
  end

  def self.create
  end

  def update(attributes)
    attributes.each do |k, v|
      self.{k} = v
    end
    save
  end

  def save
  end

  def attribute=(val)
    @attribute = val
  end

  def attribute
    @attribute
  end
end
