require 'moped'
require_relative 'query'

module Moped
	class Collection
		def frequency(group, match = {})
			Mongoid::Frequency.query(self, match, group)
		end

		alias_method :freq, :frequency
	end
end
