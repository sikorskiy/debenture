class Passport < ApplicationRecord
  belongs_to :debenture, class_name: "passport", optional: true
  belongs_to :debenture, class_name: "passport", optional: true
end
