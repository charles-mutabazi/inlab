class Location
  include Mongoid::Document
  include Mongoid::Timestamps

  field :user_id, type: String
  field :floor_name, type: String
  field :status, type: String
  field :motion_data, type: String, :default => "(0,0,0)"

end
