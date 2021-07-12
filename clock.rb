require 'clockwork'

require './config/application'

module Clockwork
  every(1.hour, 'Crawl auto.ria.com') { AutoRia::CrawlerWorker.perform_async }
  every(20.second, 'Scrape auto.ria.com') { AutoRia::Scraper.perform_async }
  every(20.seconds, 'Actualize auto.ria.com') { AutoRia::Actualizer.perform_async }
end
