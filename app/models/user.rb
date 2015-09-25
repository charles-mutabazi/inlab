class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :first_name, type: String
  field :last_name, type: String
  field :gender, type: String
  field :email, type: String
  field :student_id, type: String
  field :nationality, type: String

  field :_id, type:String, default: -> { student_id.to_s.parameterize }


end
