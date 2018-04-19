class BuildReportJob < ApplicationJob
  queue_as :reports

  def perform(id)
    report = Report.find(id)
    report.update!(status: Report::STATUS[:processing])

    sleep 5

    report.data = { a: id * 2, b: id * 3 }
    report.status = Report::STATUS[:success]
    report.save!
  end
end
