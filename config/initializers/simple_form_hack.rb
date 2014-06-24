module SimpleForm
  module Inputs
    class Base
      def input_html_options
        p '---------------builder'
        p @builder.options[:wrapper]
        # binding.pry
        # if @builder.options[:wrapper] == :bootstrap_angular
          @input_html_options.reverse_merge!({ 'ng-model' => ng_model, 'ng-init' => "#{ ng_model } = ''" })
        # end
        @input_html_options
      end

      def ng_model
        @ng_model ||= begin
          child_index = options[:child_index]
          names = object_name.to_s.scan(/\w+/).flatten
          names.delete(child_index) if child_index
          names.each do |name|
            name.gsub!('_attributes', '')
            name.gsub!(name, "[#{ name }]") if name.match(/\d/)
          end
          "#{ names.join('.').gsub('.[', '[') }.#{ self.attribute_name }"
        end
      end
    end
  end
end