class JobsController < ApplicationController
  def index
    if(!params[:company] || params[:company] == :all)
      jobs = Job.all
    else
      jobs = Job.where("company_id = #{params[:company]}")
    end
    respond_to do |format|
      format.html {render :js => jobs.to_json}
      format.json {render :json => {:jobs => jobs}}
    end
  end
end
