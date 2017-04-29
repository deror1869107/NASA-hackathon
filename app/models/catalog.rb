class Catalog < ApplicationRecord
  after_save :call_server

  protected

  def call_server
    CallServerJob.perform_later
  end
end
