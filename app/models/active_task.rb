class ActiveTask
  include Mongoid::Document
  include Mongoid::Timestamps
  include TimeScopeMethods

  field :desc,   type: String
  belongs_to :user

  module UserMethods
    extend ActiveSupport::Concern 

    included do
      has_many :active_tasks
    end
  end
end