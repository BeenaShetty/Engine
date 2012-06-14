class CreateBillingInvoices < ActiveRecord::Migration
  def change
    create_table :billing_invoices do |t|
      t.string :invoice_no
      t.float :amount
      t.date :invoice_date

      t.timestamps
    end
  end
end
