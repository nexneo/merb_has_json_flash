module MerbHasJsonFlash
  module FlashHelperMixin
    def flash
      @web_controller.flash
    end
  end
end