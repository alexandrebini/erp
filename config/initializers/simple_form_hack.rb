module SimpleForm
  module Inputs
    class Base
      def input_html_options
        p '---------------builder'
        p @builder.options[:wrapper]

        # if @builder.options[:wrapper] == :bootstrap_angular
          @input_html_options.reverse_merge!({ "ng-model" => "#{@builder.lookup_model_names.join(".")}.#{self.attribute_name}" })
        # end
        @input_html_options
      end
    end
  end
end