class Campaign < ActiveRecord::Base
  has_many :touches, :dependent=>:destroy
  accepts_nested_attributes_for :touches

  has_many :stores, :through=>:touches
end
