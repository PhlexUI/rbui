# frozen_string_literal: true

module RBUI
  class Collapsible < Base
    def initialize(open: false, **attrs)
      @open = open
      super(**attrs)
    end

    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          controller: "rbui--collapsible",
          rbui__collapsible_open_value: @open
        }
      }
    end
  end
end
