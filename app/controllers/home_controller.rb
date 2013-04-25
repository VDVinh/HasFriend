class HomeController < ApplicationController
  def index
  end
  def referral
  end
  def profile
  end
  def job_request
    query_result = Job.select("companies.name, jobs.id, jobs.position").joins(:company).where(:industry_id => params[:industry_id])
    respond_to do |format|
      format.html {render :js => query_result.to_json}
      format.json {render :json => {:companies => query_result}}
    end
  end


end
