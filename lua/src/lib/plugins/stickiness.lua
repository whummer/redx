local M = { }
M.pre = function(request, session, param)
  return nil
end
M.balance = function(request, session, param)
  local _list_0 = session['servers']
  for _index_0 = 1, #_list_0 do
    local server = _list_0[_index_0]
    if request.session.backend == server['name'] then
      return server
    end
  end
  return session['servers']
end
M.post = function(request, session, param)
  if session['server'] ~= nil then
    request.session.backend = session['server']
  end
  return nil
end
return M
