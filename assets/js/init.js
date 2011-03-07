$(document).ready(function() {
  e = $("form.login > input[name='user[username]']");
  e.focus( function() {
    if($(this).hasClass('sample'))
    {
      $(this).val('');
      $(this).removeClass('sample');
    }
  });
  e.blur(function() {
    if ($(this).val()=='') 
    {
      $(this).val('username');
      $(this).addClass('sample');
    }
  });
  
  e = $("form.login > input[name='user[password]']");
  e.focus( function() {
    if($(this).hasClass('sample'))
    {
      $(this).val('');
      $(this).removeClass('sample');
    }
  });
  e.blur(function() {
    if ($(this).val()=='') 
    {
      $(this).val('password');
      $(this).addClass('sample');
    }
  });

});