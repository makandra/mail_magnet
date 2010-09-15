class Mailer < ActionMailer::Base

  def letter
    recipients 'original.to@example.com'
    cc 'original.cc@example.com'
    bcc 'original.bcc@example.com'
    subject 'Hello Universe!'
  end

  def html_letter
    recipients 'original.to@example.com'
    cc 'original.cc@example.com'
    bcc 'original.bcc@example.com'
    subject 'Hello Universe!'
    content_type "text/html"
  end

end
