require_relative 'dynaccount/invoice'

module Dynaccount
  def self.configure(&block)
    yield(block)
  end
end
