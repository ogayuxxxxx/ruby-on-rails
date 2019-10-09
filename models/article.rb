class Article < ApplicationRecord
    validates :title, :body, :released_at, presence: true
    validates :title, length: { maximum: 80 }
    validates :body, length: { maximum: 2000 }
    def no_expiration
         expired_at.nil?
    end

  def no_expiration=(val)
    @no_expiration = val.in?([true, "1"])  

   before_validation do
    self.expored_at = nil if @no_expiration
    errors.add(:expored_at, :expired_at_too_old)
  end
   end

   scope :open_to_the_public, -> { where(member_only: false) }

   scope :visible, -> do
    now = Time.current

    where("released_at <= ?", now)
       .where("expired_at > ? OR expired_at IS NULL", now)
   end
end

