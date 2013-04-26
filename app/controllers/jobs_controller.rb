class JobsController < ApplicationController
  def index
    if(!params[:company] || params[:company] == :all)
      @jobs = Job.all
    else
      @job = Job.where("company_id = #{params[:company]}")
    end
  end
end
