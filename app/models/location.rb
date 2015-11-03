class Location
  include Mongoid::Document
  include Mongoid::Timestamps

#  field :user_id, type: Integer
	field :device_uuid, type: String
  field :floor_name, type: String
  field :uuid, type: String
  field :major, type: String
  field :minor, type: String
  field :motion_data, type: String, :default => "(0,0,0)"

end
