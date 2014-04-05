require 'mongoid'
require_relative 'query'

module Mongoid
	class Criteria
		def frequency(group)
			Mongoid::Frequency.query(klass.collection, selector, group)
		end

		alias_method :freq, :frequency
	end
end
