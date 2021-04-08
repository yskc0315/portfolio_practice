class Comment < ApplicationRecord

  has_many :post_images, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image

  has_many :favorites
  has_many :notifications, dependent: :destroy
  belongs_to :user
  belongs_to :museum

  enum how_to_visit: { 電車で: 1, 車で: 2, バスで: 3, その他: 4}
  enum companion: { おひとり: 1, 友達と: 2, 恋人と: 3, 家族と: 4}

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def create_notification_like!(current_user)
    # すでに「いいね」されているか検索
    temp = Notification.where(["visitor_id = ? and visited_id = ? and comment_id = ? and action = ? ", current_user.id, user_id, id, 'like'])
    # いいねされていない場合のみ、通知レコードを作成
    if temp.blank?
      notification = current_user.active_notifications.new(
        comment_id: id,
        visited_id: user_id,
        action: 'like'
      )
      # 自分の投稿に対するいいねの場合は、通知済みとする
      if notification.visitor_id == notification.visited_id
        notification.checked = true
      end
      notification.save if notification.valid?
    end
  end

end