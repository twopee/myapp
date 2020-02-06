%% -*- mode: nitrogen -*-
%% vim: ts=4 sw=4 et
-module (change_pass).
-compile(export_all).
-include_lib("nitrogen_core/include/wf.hrl").
-include("records.hrl").

main() -> #template { file="./site/templates/bare.html" }.

title() -> "change_password".

body() -> 
        #container_12 { body=[
        #grid_8 { alpha=true, prefix=2, suffix=2, omega=true, body=inner_body() }
    ]}.

inner_body()->
    case index:isUserLogin() of
        true ->
            true;
        false ->
            wf:redirect_to_login("/login")
    end,
    wf:wire(submit, old_password, #validate { validators=[
        #is_required { text="Required." }
    ]}),
    wf:wire(submit, new_password1, #validate { validators=[
        #is_required { text="Required." }
    ]}),
    wf:wire(submit, new_password2, #validate { validators=[
        #is_required { text="Required." }
    ]}),
    [
    #panel { style="margin: 50px;", body=[
        
        #flash {},
        #h3{text="Please login"},

        #label { text="Old password" },
        #textbox { id=old_password, next=new_password1 },
        #br {},
        #label { text="New password" },
        #password { id=new_password1, next=new_password2 },
        #br {},
        #label { text="One more, for sure" },
        #password { id=new_password2, next=submit },
        #br {},
        #button { text="Change", id=submit, postback=change_pass }
    ]}
    ].
	
event(change_pass) ->
    UserName = wf:user(),
    Password = users:get_password(UserName),
    case wf:q(new_password1) == wf:q(new_password2) of
        true ->
        case wf:q(old_password) == Password of
            true -> 
                users:insert(UserName, wf:q(new_password1)),
                wf:flash("Password succefully changed");
            false -> wf:flash("Wrong old_password")
        end;
        false -> wf:flash("New passwords not equal")
    end.
