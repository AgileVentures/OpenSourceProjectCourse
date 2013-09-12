Can we easily have computer provide code that will make a spec pass? can we automate that?

    describe "Widget" do
      it "should respond to method bar" do
        Widget.any_instance.should_respond_to("bar") 
      end
      it "should call bar on foo" do
        widget = Widget.new
        widget.should_receive('bar').with('foo') 
        widget.bar('foo')
      end
    end
    
    class Widget
      def bar(a)
      end 
    end

A sufficiently well specced set of rspecs should precisely define the code required, so in principle we should be able to generate the code directly from the rspec

Seems like we could co-opt the existing rspec engine so that instead of setting up expectations or checking for the existence of methods that it actually authored a file that met the necessary specifications - variable names might have to be generated randomly.

Then computer could produce pre-created spec to start the next round of ping pong ...
