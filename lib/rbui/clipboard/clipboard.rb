# frozen_string_literal: true

module RBUI
  class Clipboard < Base
    def initialize(options: {}, success: "Copied!", error: "Copy Failed!", **attrs)
      @options = options
      @success = success
      @error = error
      super(**attrs)
    end

    def view_template(&block)
      div(**attrs) do
        div(&block)
        success_popover
        error_popover
      end
    end

    private

    def success_popover
      ClipboardPopover(type: :success) { @success }
    end

    def error_popover
      ClipboardPopover(type: :error) { @error }
    end

    def default_attrs
      {
        data: {
          controller: "rbui--clipboard",
          action: "click@window->rbui--clipboard#onClickOutside",
          rbui__clipboard_success_value: @success,
          rbui__clipboard_error_value: @error,
          rbui__clipboard_options_value: @options.to_json
        }
      }
    end
  end
end
