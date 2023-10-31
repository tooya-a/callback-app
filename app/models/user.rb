class User < ApplicationRecord
  before_create :ensure_has_name
  private

  def ensure_has_name
    puts "nameの値をTaroに設定します"
    self.name = 'Taro' if name.blank?
  end
end
