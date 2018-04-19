class ReportsController < ApplicationController
  def show
    render json: { report: build_report }
  end

  private

  def build_report
    sleep 10

    { a: 1, b: 2 }
  end
end
