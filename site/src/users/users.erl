-module(users).
-export([start/0, insert/2, close/0, check_user_exist/1, get_password/1]).

start()->
	try {ok, db_users} = dets:open_file(db_users, [{type, set}]) of
		{ok, db_users} -> 
      ok
	catch 
		error:badarg -> {error, start_func}
	end.

insert(Username, Password) ->
  start(),
  dets:insert(db_users, {Username, Password}),
  close().

check_user_exist(Name)->
  start(),
  Result = case dets:lookup(db_users, Name) of
    [] -> false;
    [{Name, _}] -> true
  end,
  close(),
  Result.

get_password(Username)->
  start(),
  [{Username, Passwrd}] = dets:lookup(db_users, Username),
  close(),
  Passwrd.

close()->
  dets:close(db_users).