#coding: utf-8
class User < ActiveRecord::Base
  has_many :articles
  
  validates :name,:presence => true,
                  :length => { :maximum => 50},
                  :uniqueness => true
                  


end
