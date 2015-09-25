class Floor
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :ibeacon_uuid, type: String
  field :major_value, type: Integer
  field :minor_value, type: Integer
  field :description, type: String

  field :_id, type:String, default: -> { minor_value.to_s.parameterize }

  validates_presence_of :major_value, :minor_value, :name, :description

  # embeds_many :location_data
end
