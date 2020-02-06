%% -*- mode: nitrogen -*-
-module (index).
-compile(export_all).
-include_lib("nitrogen_core/include/wf.hrl").

main() -> #template { file="./site/templates/bare.html" }.

title() -> "Welcome page".

body() ->
    #container_12 { body=[
        #grid_8 { alpha=true, prefix=2, suffix=2, omega=true, body=inner_body() }
    ]}.

inner_body() -> 
    case isUserLogin() of
        true ->
            true;
        false ->
            wf:redirect_to_login("/login")
    end,
    UName = wf:user(),
    [
        #button{ text="change password", postback=change_pass, 
            style="float:right, display:inline" },
        #button { text="logout", postback=logout, 
            style="float:right, display:inline" },

        #h2{ text= UName, style="display:inline"},
        #h2 { text= "welcome to test site" },
        "
        You are on index page. Thanks for registering.
        "
    ].
	
event(logout) ->
    wf:clear_user(),
    wf:redirect("/");

event(login) ->
    wf:redirect("/login");

event(change_pass)->
    wf:redirect("/change_pass").

isUserLogin()->
    User = wf:user(),
    try string:length(User) of 
       _ -> true
    catch 
      error:_ -> false
    end.
