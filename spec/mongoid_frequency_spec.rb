require 'spec_helper'

class MyModel
	include Mongoid::Document

	field :val, type: Integer, default: nil
end

describe "mongoid-frequency" do
end
