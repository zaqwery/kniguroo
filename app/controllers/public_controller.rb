class PublicController < ApplicationController     
  
  def list
     @existing_books = Book.find(:all, :conditions => {:state => 'existing'})
     @sought_books = Book.find(:all, :conditions => {:state => 'is_being_sought'})
  end
  
  def show
    @book = Book.find(params[:id])
  end   
  
  def new
    @book = Book.new
    #@book.genre_list
    #@book.author_list
  end
  
  def new_sought 
    @book = Book.new
    render(:action => 'new') 
  end   
  

  
  def edit 
    @book = Book.find(params[:id])
  end
  
  def update 
    @book = book.find(params[:id])
    if @book.update_attributes(params[:book])
      redirect_to(:action => 'list')
    else
      render(:action => 'edit')
    end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to(:action => 'list')    
  end 
  
  def book_list
    @existing_books = Book.find(:all, :conditions => {:state => 'existing'})
    @sought_books = Book.find(:all, :conditions => {:state => 'is_being_sought'}) 
  end
  
      
end
