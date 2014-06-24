class HitWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { daily.hour_of_day(3) }

  def perform
    @list = Information.order("updated_at DESC").limit(500)

    @list.each do |item|
      item.update_attribute(:hit, "#{item.hit.to_i + rand(56)}")
    end
  end
end
