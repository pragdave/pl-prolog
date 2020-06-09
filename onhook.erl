wait_for_onhook() ->
    receive
        onhook ->
            disconnect(),
            idle();
        {connect, B} ->
            B ! {busy, self()},
            wait_for_onhook()
    after
        60000 ->
            disconnect(),
            error()
    end.

process(Device, off_hook) -> 
  if on(Device) and idle(Device) ->
    toggle(Device, dial_tone), 
    clear_dialed_digits(Device), 
    not_longer_idle(Device),
    record_off_hook(Device).
  end.
