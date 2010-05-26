class BooksController < ApplicationController 
  # GET /books
  # GET /books.xml
  def index
    @existing_books = Book.find(:all, :conditions => {:state => 'existing'})
    @sought_books = Book.find(:all, :conditions => {:state => 'is_being_sought'})
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @books }
    end
  end

  # GET /books/1
  # GET /books/1.xml
  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/new
  # GET /books/new.xml
  def new 
    @book = Book.new
   # begin
    #  @book.show_as_existing!
  #  rescue 
    #  @book.failure!
  #  end
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }
    end
  end  
  
  def new_sought 
    @book = Book.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.xml
  def create
    @book = Book.new(params[:book])
    #if @book.state == 'submitted'
     # @book.show_as_existing!
    #else
     #  @book.show_as_being_sought!
    #end
    #@book.show_as_existing!

    respond_to do |format|
      if @book.save
        format.html { redirect_to(@book, :notice => 'Book was successfully created.') }
        format.xml  { render :xml => @book, :status => :created, :location => @book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.xml
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to(@book, :notice => 'Book was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.xml
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to(books_url) }
      format.xml  { head :ok }
    end
  end

  def show_existing

  end
  
  def show_sought
  end

end
