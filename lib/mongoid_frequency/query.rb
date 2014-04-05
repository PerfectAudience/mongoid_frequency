module Mongoid
	module Frequency
		extend self

		def query(collection, match, group)
			collection.aggregate([
				{
					'$match' => match
				},
				{
					'$group' => {
						_id: ensure_bling(group),
						count: {
							'$sum' => 1
						}
					}
				}
			]).each_with_object({}) do |element, h|
				h[element['_id']] = element['count']
			end
		end

	private

		def ensure_bling(group)
			group.to_s.sub(/^\$?/, '$')
		end
	end
end
