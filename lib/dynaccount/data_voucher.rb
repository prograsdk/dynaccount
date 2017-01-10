module Dynaccount
  class DataVoucher < DynaccountObject
    def self.ignore_put
      [:id, :client_id, :is_ocr_pending, :is_pdf_broken, :is_attached, :time, :user_id, :is_pdf_scan, :is_pic, :file_sha1, :file_ext, :file_ext_thumb, :file_size, :file_size_original, :file_name, :from_email, :num_pages, :dpi, :ocr_vatno, :ocr_invoice_time, :ocr_invoice_due_time, :ocr_total, :ocr_vat]
    end

    def self.api_path
      'data_voucher'
    end
  end
end
