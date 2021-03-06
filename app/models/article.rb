#coding: utf-8
class Article < ActiveRecord::Base
  #必ず値が入るようにする
  validates :title,:body,:presence => true
  #重複を禁止する。
  validates :title,:body,:uniqueness => true
  #bodyは100文字以内
  validates :body,:length => { :maximum => 32 }

  #belongs_toでUserモデルと1対服すの関係をつくる。
  belongs_to :user


end
