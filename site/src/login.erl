%% -*- mode: nitrogen -*-
%% vim: ts=4 sw=4 et
-module(login).
-compile(export_all).
-include_lib("nitrogen_core/include/wf.hrl").
-include("records.hrl").

main() -> #template { file="./site/templates/bare.html" }.

title() -> "Login".

body() -> 
    wf:wire(submit, username, #validate { validators=[
        #is_required { text="Required." }
    ]}),
    wf:wire(submit, password, #validate { validators=[
        #is_required { text="Required." }
    ]}),
    
    #panel { style="margin: 50px;", body=[
        
        #flash {},
        #h3{text="Please login"},
        #label{ text="or you can register:", style="display:inline"},
        #button{text="register", postback=register, style="margin:10px"},
        #label { text="Username" },
        #textbox { id=username, next=password },
        #br {},
        #label { text="Password" },
        #password { id=password, next=submit },
        #br {},
        #button { text="Login", id=submit, postback=login }
    ]}.

event(login) ->
    Name = wf:q(username),
    Passwrd = users:get_password(wf:q(username)),
    case wf:q(password) == Passwrd of
        true ->
            wf:role(managers, true),
            wf:user(Name),
            wf:redirect_from_login("/");
        false ->
            wf:flash("Invalid password.")
    end;

event(register)->
    wf:redirect("/register").