class Book < ActiveRecord::Base    

  validates_presence_of :title 
  
  belongs_to :user
  
  # will_paginate
  cattr_reader :per_page
  @@per_page = 5

  #acts_as_taggable
  acts_as_taggable_on :genre, :author
  
  #state machine
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
