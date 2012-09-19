#coding: utf-8
class Article < ActiveRecord::Base
  validates_presence_of :title
  #belongs_toでUserモデルと1対服すの関係をつくる。
  belongs_to :user


end
