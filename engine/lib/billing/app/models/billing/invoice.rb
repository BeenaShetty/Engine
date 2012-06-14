module Billing
  class Invoice < ActiveRecord::Base
    attr_accessible :amount, :invoice_date, :invoice_no
    validates :invoice_no, :presence => true
    validates :amount , :presence => true
  end
end
