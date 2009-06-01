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
        @_flash = FlashHash.new(JSON.parse(cookies[:flash])) if cookies[:flash]
      end

      def sweep_flash
        flash.sweep
        cookies[:flash] = flash.attrs.to_json
      end
    end
  end
end
