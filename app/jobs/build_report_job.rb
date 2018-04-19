class BuildReportJob < ApplicationJob
  queue_as :reports

  def perform
  end
end
