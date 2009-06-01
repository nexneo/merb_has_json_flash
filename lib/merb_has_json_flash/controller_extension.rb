module MerbHasJsonFlash
  module ControllerExtension
    def self.included(base)
      base.send :include, InstanceMethods
      base.class_eval { before :restore_flash; after :sweep_flash }
    end

    module InstanceMethods

      def flash(refresh = false) #:doc:
        @_flash = FlashHash.new unless refresh || @_flash.is_a?(FlashHash)
        @_flash
      end

    protected
      def restore_flash
        if cookies[:flash]
          if defined? ActiveSupport
            attrs = ActiveSupport::JSON.decode cookies[:flash]
          else
            attrs = JSON.parse cookies[:flash]
          end
          @_flash = FlashHash.new attrs
        end
      end

      def sweep_flash
        flash.sweep
        cookies[:flash] = flash.attrs.to_json
      end
    end
  end
end
