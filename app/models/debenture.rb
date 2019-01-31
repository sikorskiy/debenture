class Debenture < ApplicationRecord
  has_many :passports, class_name: "passport", foreign_key: "passport_1_id"
  has_many :passports, class_name: "passport", foreign_key: "passport_2_id"
end
