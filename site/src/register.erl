%% -*- mode: nitrogen -*-
%% vim: ts=4 sw=4 et
-module (register).
-compile(export_all).
-include_lib("nitrogen_core/include/wf.hrl").
-include("records.hrl").

main() -> #template { file="./site/templates/bare.html" }.

title() -> "Register".

body() -> 
    
    wf:wire(submit, username, #validate { validators=[
        #is_required { text="Required." }
    ]}),
    wf:wire(submit, password, #validate { validators=[
        #is_required { text="Required." }
    ]}),
    #panel { style="margin: 50px;", body=[
        #h3{text="Please Register"},
        #flash {},
        #label { text="Username" },
        #textbox { id=username, next=password },
        #br {},
        #label { text="Password" },
        #password { id=password, next=submit },
        #br {},
        #button { text="register", id=submit, postback=register }
    ]}.
	
event(register) ->
    Name = wf:q(username),
    
    case users:check_user_exist(Name) of
        false ->
            Pswrd = wf:q(password),
            users:insert(Name, Pswrd),
            wf:redirect("/"),
            wf:flash("User Registered!");
        true ->
            wf:flash("Username already taken.")
    end.
