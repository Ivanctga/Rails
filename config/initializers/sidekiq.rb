jobs = {
  'new_post_notification_job' => {
    'cron' => '* 10 * * 6',
    'class' => 'NewPostsNotificationJob',
    'queue' => 'notification',
    'active_job' => true
  }
}

Sidekiq::Cron::Job.load_from_hash(jobs)