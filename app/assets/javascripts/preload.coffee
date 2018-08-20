
  $(document).on "turbolinks:load", =>
    return unless  $('body').data('action') != 'home'
      $('#a').removeClass('loading');
      $('#preload').delay(3000).slideUp('fast');
    else
      $('#preload').removeClass('preload-container');
