class Dashboard
  constructor: (@element) ->
    @body                  = @element.find("body")
    @modal                 = @element.find("#modal")
    @modal_title           = @element.find("#modal-title")
    @form                  = @element.find("#info-form")
    @bio_input             = @element.find("#bio")
    @dob_input             = @element.find("#dob")
    @feet_input            = @element.find("#feet")
    @inches_input          = @element.find("#inches")
    @bf_input              = @element.find("#bf")
    @activity_level_input  = @element.find("#activity_level")
    @information           = @element.find("#information")
    @goals                 = @element.find("#goals")

    @cancel_button         = @element.find("#cancel")
    @hidden_button         = @element.find("#trigger")
    @back_button           = @element.find("#back")
    @next_button           = @element.find("#next")
    @submit_button         = @element.find("#submit")
    @info_button           = @element.find("#info_button")
    @goals_button          = @element.find("#goals_button")
    @close_button          = @element.find("#close")

    @next_button.on    "click", @nextSlide
    @back_button.on    "click", @previouSlide
    @submit_button.on  "click", @submitForm
    @cancel_button.on  "click", @closeForm
    @info_button.on    "click", @previouSlide
    @goals_button.on   "click", @nextSlide
    @close_button.on   "click", @closeForm

    @hidden_button.click();
    @body.addClass("body-overlay")
    @goals.hide();
    @back_button.hide();

  nextSlide: =>
    @information.hide();
    @goals.show();
    @next_button.hide();
    @back_button.show();
    @modal_title.text("Goals")
    @info_button.removeClass("btn-primary")
    @info_button.addClass("btn-default")
    @goals_button.removeClass("btn-default")
    @goals_button.addClass("btn-primary")

  submitForm: =>

  closeForm: =>
    @form[0].reset();
    @modal.fadeOut(1000);


  previouSlide: =>
    @information.show();
    @goals.hide();
    @next_button.show();
    @back_button.hide();
    @modal_title.text("Fitness Information")
    @info_button.removeClass("btn-default")
    @info_button.addClass("btn-primary")
    @goals_button.removeClass("btn-primary")
    @goals_button.addClass("btn-default")



$ ->
  new Dashboard($("body"))
