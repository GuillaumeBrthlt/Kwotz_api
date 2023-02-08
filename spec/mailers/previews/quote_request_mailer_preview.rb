class QuoteRequestMailerPreview < ActionMailer::Preview
  def quote_request_send
    QuoteRequestMailer.quote_request_send(QuoteRequest.last)
  end

  def document_attached_send
    QuoteRequestMailer.document_attached_send(QuoteRequest.last.user, QuoteRequest.last)
  end
end