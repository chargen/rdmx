require File.dirname(__FILE__)+'/../rdmx'

Spec::Runner.configure do |config|
  config.before :each do
    Rdmx::Universe.all = []
    @port = stub('SerialPort', :write => nil)
    SerialPort.stub!(:new).and_return(@port)
  end

  config.after :each do
    Rdmx::Universe.all = []
  end
end
