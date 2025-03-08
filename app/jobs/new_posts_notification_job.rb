class NewPostsNotificationJob < ApplicationJob
  queue_as :notification

  def perform()
    subscribers = [{email: 'joao@gmail.com', name: 'João'}, {email: 'maria@gmail.com', name: 'Maria'}]
    post = Post.where(publish_at: (Time.now - 1.week)..).select(:title)
    subscribers.each do |subscriber|
      SubscribersMailer.with(subscriber: subscriber, post: post).new_post.deliver_now
    end    
  end
end
