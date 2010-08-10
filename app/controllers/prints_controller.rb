class PrintsController < ApplicationController
  # GET /prints
  # GET /prints.xml
  def index
    @title = "Prints"    
    @prints = Print.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prints }
    end
  end
   


  # GET /prints/1
  # GET /prints/1.xml
  def show
    @title = "Prints"  # only to get passing tests - may delete many of CRUD methods 
    @print = Print.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @print }
    end
  end

  # GET /prints/new
  # GET /prints/new.xml
  def new
    @title = "Prints"   
    @print = Print.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @print }
    end
  end

  # GET /prints/1/edit
  def edit
    @title = "Prints"   
    @print = Print.find(params[:id])
  end

  # POST /prints
  # POST /prints.xml
  def create
    @print = Print.new(params[:print])

    respond_to do |format|
      if @print.save
        flash[:notice] = 'Print was successfully created.'
        format.html { redirect_to(@print) }
        format.xml  { render :xml => @print, :status => :created, :location => @print }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @print.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prints/1
  # PUT /prints/1.xml
  def update
    @print = Print.find(params[:id])

    respond_to do |format|
      if @print.update_attributes(params[:print])
        flash[:notice] = 'Print was successfully updated.'
        format.html { redirect_to(@print) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @print.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prints/1
  # DELETE /prints/1.xml
  def destroy
    @print = Print.find(params[:id])
    @print.destroy

    respond_to do |format|
      format.html { redirect_to(prints_url) }
      format.xml  { head :ok }
    end
  end
end
