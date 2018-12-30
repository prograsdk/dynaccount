module Dynaccount
  class QueryBuilder
    attr_accessor :klass, :selects, :wheres, :limits, :offsets, :orders

    def initialize(klass)
      self.klass = klass
    end

    def order(o)
      if o.is_a?(Hash)
        unless [:DESC, :ASC].include?(o[o.keys.first].to_sym)
          raise ArgumentError.new("Wrong argument #{o[o.keys.first]}. Should be :ASC or :DESC")
        end

        self.orders = [o.keys.first, o[o.keys.first].to_sym]
      elsif [String, Symbol].include?(o.class)
        self.orders = [o.to_s, :asc]
      else
        self.orders = nil
      end
    end

    def select(*args)
      self.selects = args.map(&:to_s)
    rescue NoMethodError
      raise ArgumentError.new("Wrong argument #{args}. All should be castable to string")
    end

    def where(**args)
      self.wheres = args
    rescue NoMethodError
      raise ArgumentError.new("Wrong argument #{args}. All should be castable to string")
    end

    def limit(l)
      self.limits = l
    end

    def offset(o)
      self.offsets = o
    end


    def execute
      klass.run_query(
        select: self.selects,
        where: self.wheres,
        limit: self.limits,
        offset: self.offsets,
        order: self.orders
      )
    end
  end
end
