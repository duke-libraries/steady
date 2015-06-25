class Upload

  include ActiveModel::Model

  attr_accessor :csv, :unitid, :extent, :unitdate

  validates_presence_of :csv

  def initialize(attributes = {})
    attributes.each do |name, value|
      instance_variable_set "@#{name}", value
    end
  end

  def persisted?
    false
  end

end
