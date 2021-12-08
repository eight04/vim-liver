if !exists("s:timer")
  let s:timer = 0
endif

function g:liver#ToggleLive(arg)
  let b:live_enabled = empty(a:arg) ?
  \  !get(b:, "live_enabled") :
  \  +a:arg
  echo (b:live_enabled ? "" : "no") . "livereload"
  call s:ToggleTimer()
endfunction

augroup live_reload
  au!
  au BufEnter * call <SID>ToggleTimer()
augroup END

function s:LiveTimer(timer)
  let is_last_line = line(".") == line("$")
  execute "checktime" bufnr()
  if is_last_line && line(".") != line("$")
    normal! G
  endif
endfunction

function s:ToggleTimer()
  if get(b:, "live_enabled") && !s:timer
    let s:timer = timer_start(1000, function("<SID>LiveTimer"), {"repeat": -1})
  elseif !get(b:, "live_enabled") && s:timer
    call timer_stop(s:timer)
    let s:timer = 0
  endif
endfunction
