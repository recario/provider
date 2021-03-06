module AutoRia
  class CrawlerWorker
    include Sidekiq::Worker
    sidekiq_options queue: 'provider-auto-ria-crawler', retry: false, backtrace: false

    def perform
      AutoRia.crawl!
    end
  end
end
