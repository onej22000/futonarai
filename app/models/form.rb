class Form < ApplicationRecord
  include ActiveModel::Validations

  # 要素を定義します
  attr_accessor :form_onamae,
                :form_hurigana,
                :form_email,
                :form_tel,
                :form_message

  # バリデーションの定義
  MaxLength1 = 25
  MaxLength2 = 100
  MaxLength3 = 15
  MaxLength4 = 1000
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/i

  validates :form_onamae,
            presence: true,
            length: { maximum: MaxLength1 }
  # validates :form_hurigana,
  #    presence: true
  validates :form_email,
            presence: true,
            length: { maximum: MaxLength2 },
            format: { with: VALID_EMAIL_REGEX }
  validates :form_tel,
            # presence: true,
            length: { maximum: MaxLength3 }
  # format: { with: VALID_PHONE_REGEX }
  validates :form_message,
            presence: true,
            length: { maximum: MaxLength4 }
end
