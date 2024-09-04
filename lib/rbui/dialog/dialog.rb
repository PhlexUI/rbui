# frozen_string_literal: true

module RBUI
  class Dialog < Base
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
          controller: "rbui--dialog",
          rbui__dialog_open_value: @open
        }
      }
    end
  end
end
