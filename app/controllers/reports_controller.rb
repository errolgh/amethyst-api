class ReportsController < ApplicationController
  def show
    report = Report.find(params[:id])
    render_report(report)
  end

  def create
    report = create_report
    BuildReportJob.perform_later(report.id)
    render_report(report)
  end

  # NOTE: Old synchronous version for backwards compatibility.
  # Clients should be updated to use create and show.
  def old_show
    report = create_report
    BuildReportJob.perform_now(report.id)
    report.reload
    render_report(report)
  end

  private

  def create_report
    Report.create(status: Report::STATUS[:queued])
  end

  def render_report(report)
    render json: { report: report.as_json }
  end
end
