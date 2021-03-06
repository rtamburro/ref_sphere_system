class Assignment < ApplicationRecord
  belongs_to :game
  belongs_to :center_referee, class_name: "User", optional: true
  belongs_to :assistant_referee_1, class_name: "User", optional: true
  belongs_to :assistant_referee_2, class_name: "User", optional: true
  belongs_to :fourth_official, class_name: "User", optional: true
  
  accepts_nested_attributes_for :game  
end
