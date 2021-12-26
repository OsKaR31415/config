
let g:alarms_enabled = 0
let g:alert_enabled = 1

call timer_stopall()

fun! s:alert(...)
    if g:alert_enabled
        !mplayer ~/.vim/commands/alarme_reveil_mecanique.mp3 && tty-clock -crs
    else
        echo "!!" . strftime('%H:%m')
    endif
    call DisableAlarmsFor1min() " Do not repeat the alarm !
endfun
command! AlarmTest call s:alert()

fun! s:check_alarms(timer_id)
    " let &background = (strftime('%H') < 12 ? 'light' : 'dark')
    if !g:alarms_enabled
        return
    endif

    if strftime('%H%M') == 1200
        call s:alert()
    elseif strftime('%H%M') == 1959
        call s:alert()
        echo "!!Emma!!"
    elseif strftime('%H%M') == 2300
        call s:alert()
    elseif strftime('%H%M') == 0001
        call s:alert()
    endif
endfun

" check alarms each minute
call timer_start(1000 * 60, function('s:check_alarms'), {'repeat': -1})

" call s:check_alarms(0)  " Run on startup

function! s:enable_alarms(timer_id)
    let g:alarms_enabled=1
endfun

function! DisableAlarmsFor1h()
    let g:alarms_enabled = 0
    call timer_start(1000 * 60 * 60, function('s:enable_alarms'), {'repeat': 1})
endfun
fun! DisableAlarmsFor10min()
    let g:alarms_enabled = 0
    call timer_start(1000 * 60 * 10, function('s:enable_alarms'), {'repeat': 1})
endfun
fun! DisableAlarmsFor1min()
    let g:alarms_enabled = 0
    call timer_start(1000 * 60, function('s:enable_alarms'), {'repeat': 1})
endfun
command! DisableAlarmsFor10min call DisableAlarmsFor10min()
command! DisableAlarmsFor1h call DisableAlarmsFor1h()


command! DisableAlarms let g:alarms_enabled=0
command! EnableAlarms let g:alarms_enabled=1


fun! s:Minutes(wait_time)
    " ring after a given number of minutes
    call timer_start(a:wait_time * 60 * 1000, function('s:alert'))
endfun
command! -nargs=1 Minutes call s:Minutes(<f-args>)

fun! s:Seconds(wait_time)
    " ring after a given number of minutes
    call timer_start(a:wait_time * 1000, function('s:alert'))
endfun
command! -nargs=1 Seconds call s:Seconds(<f-args>)
