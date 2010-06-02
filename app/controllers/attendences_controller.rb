class AttendencesController < ApplicationController
  # GET /attendences
  # GET /attendences.xml
  def index

    unless params[:id].blank?
      begin
        @month_start = params[:id].to_date.at_beginning_of_month
        @month_end = params[:id].to_date.at_end_of_month
      rescue
        @month_start = Date.today.at_beginning_of_month
        @month_end = Date.today.at_end_of_month
      end
    else
      @month_start = Date.today.at_beginning_of_month
      @month_end = Date.today.at_end_of_month
    end
    @attendences = Attendence.find(:all, :conditions => {:today => @month_start.at_beginning_of_month..@month_end.at_end_of_month})
    @task = Task.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendences }
    end
  end

  # GET /attendences/1
  # GET /attendences/1.xml
  def show
    @attendence = Attendence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendence }
    end
  end

  # GET /attendences/new
  # GET /attendences/new.xml
  def new
    @attendence = Attendence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendence }
    end
  end

  # GET /attendences/1/edit
  def edit
    @attendence = Attendence.find(params[:id])
  end

  # POST /attendences
  # POST /attendences.xml
  def create
    @attendence = Attendence.new(params[:attendence])

    respond_to do |format|
      if @attendence.save
        flash[:notice] = 'Attendence was successfully created.'
        format.html { redirect_to(@attendence) }
        format.xml  { render :xml => @attendence, :status => :created, :location => @attendence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendences/1
  # PUT /attendences/1.xml
  def update
    @attendence = Attendence.find(params[:id])

    respond_to do |format|
      if @attendence.update_attributes(params[:attendence])
        flash[:notice] = 'Attendence was successfully updated.'
        format.html { redirect_to(@attendence) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attendences/1
  # DELETE /attendences/1.xml
  def destroy
    @attendence = Attendence.find(params[:id])
    @attendence.destroy

    respond_to do |format|
      format.html { redirect_to(attendences_url) }
      format.xml  { head :ok }
    end
  end
end
