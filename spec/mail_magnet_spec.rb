require 'spec_helper'

describe 'mail_magnet' do

  before :each do
    ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.override_recipients = nil
  end

  it 'should allow to override recipients, cc and bcc for all mailers' do
    ActionMailer::Base.override_recipients = 'overridden.to@example.com'
    Mailer.deliver_letter
    ActionMailer::Base.deliveries.last.to.should == ['overridden.to@example.com']
    ActionMailer::Base.deliveries.last.cc.should == ['overridden.to@example.com']
    ActionMailer::Base.deliveries.last.bcc.should == ['overridden.to@example.com']
  end

  it 'should allow to override recipients, cc, and bcc with multiple recipients' do
    overrides = %w[ overridden.to@example.com other.overridden.to@example.com ]
    ActionMailer::Base.override_recipients = overrides
    Mailer.deliver_letter
    ActionMailer::Base.deliveries.last.to.should == overrides
    ActionMailer::Base.deliveries.last.cc.should == overrides
    ActionMailer::Base.deliveries.last.bcc.should == overrides
  end

  it 'should put the original recipients, cc and bcc into the mail body' do
    ActionMailer::Base.override_recipients = 'overridden.to@example.com'
    Mailer.deliver_letter
    ActionMailer::Base.deliveries.last.body.should include('To: original.to@example.com')
    ActionMailer::Base.deliveries.last.body.should include('Cc: original.cc@example.com')
    ActionMailer::Base.deliveries.last.body.should include('Bcc: original.bcc@example.com')
  end

  it 'should leave original recipients untouched if it is not activated' do
    Mailer.deliver_letter
    ActionMailer::Base.deliveries.last.to.should == ['original.to@example.com']
    ActionMailer::Base.deliveries.last.cc.should == ['original.cc@example.com']
    ActionMailer::Base.deliveries.last.bcc.should == ['original.bcc@example.com']
  end

  it 'should not touch the subject' do
    ActionMailer::Base.override_recipients = 'overridden.to@example.com'
    Mailer.deliver_letter
    ActionMailer::Base.deliveries.last.subject.should == 'Hello Universe!'
  end
  
end
