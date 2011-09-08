class CategoryElementAssociationsController < AclController
  before_filter :find_element
  
  # GET /category_element_associations
  # GET /category_element_associations.xml
  def index
    @category_element_associations = @element.category_element_associations

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @category_element_associations }
    end
  end

  # GET /category_element_associations/1
  # GET /category_element_associations/1.xml
  def show
    @category_element_association = CategoryElementAssociation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category_element_association }
    end
  end

  # GET /category_element_associations/new
  # GET /category_element_associations/new.xml
  def new
    @category_element_association = @element.category_element_associations.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category_element_association }
    end
  end

  # GET /category_element_associations/1/edit
  def edit
    @category_element_association = CategoryElementAssociation.find(params[:id])
  end

  # POST /category_element_associations
  # POST /category_element_associations.xml
  def create
    @category_element_association = @element.category_element_associations.new(params[:category_element_association])

    respond_to do |format|
      if @category_element_association.save
        format.html { redirect_to(element_url(@element), :notice => 'CategoryElementAssociation was successfully created.') }
        format.xml  { render :xml => @category_element_association, :status => :created, :location => @category_element_association }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category_element_association.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /category_element_associations/1
  # PUT /category_element_associations/1.xml
  def update
    @category_element_association = CategoryElementAssociation.find(params[:id])

    respond_to do |format|
      if @category_element_association.update_attributes(params[:category_element_association])
        format.html { redirect_to(element_url(@element), :notice => 'CategoryElementAssociation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category_element_association.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /category_element_associations/1
  # DELETE /category_element_associations/1.xml
  def destroy
    @category_element_association = CategoryElementAssociation.find(params[:id])
    @category_element_association.destroy

    respond_to do |format|
      format.html { redirect_to(element_url(@element)) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def find_element
    @element = Element.find(params[:element_id])
  end
end