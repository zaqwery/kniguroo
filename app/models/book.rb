class Book < ActiveRecord::Base    
  
  belongs_to :user
  validates_presence_of :title
  
  
  #acts_as_commentable 
                                        
  include AASM
  
  aasm_column :state
  
  aasm_initial_state :submitted
  aasm_state :submitted
  aasm_state :existing
  aasm_state :is_being_sought
  aasm_state :delivered
  aasm_state :error

  aasm_event :show_as_existing do
        transitions :to => :existing, :from => [:submitted]
  end

  aasm_event :show_as_being_sought do
        transitions :to => :is_being_sought, :from => [:submitted, :existing]
  end 
  
  aasm_event :failure do
        transitions :to => :error, :from => [:submitted]
  end 
  
  aasm_event :delivery do
        transitions :to => :delivered, :from => [:existing, :is_being_sought]
  end     
     
   
   
 
  
end
