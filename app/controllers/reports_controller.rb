class ReportsController < ApplicationController
  def show
    report = Report.find(params[:id])
    render_report(report)
  end

  def create
    report = Report.create(status: Report::STATUS[:queued])
    BuildReportJob.perform_later(report.id)
    render_report(report)
  end

  private

  def render_report(report)
    render json: { report: report.as_json }
  end
end
