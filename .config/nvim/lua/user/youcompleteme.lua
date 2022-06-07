vim.cmd [[
  let g:syntastic_java_checkers = []
  let s:jdt_ls_debugger_port = 0
  let g:ycm_java_jdtls_extension_path = ["/home/tt-tung261/.vim/vimspector-config/gadgets/linux/"]
  function! s:StartDebugging()
  if s:jdt_ls_debugger_port <= 0
    " Get the DAP port
    let s:jdt_ls_debugger_port = [youcompleteme#GetCommandResponse(
      \ 'ExecuteCommand',
      \ 'vscode.java.startDebugSession' )]

    if s:jdt_ls_debugger_port == ''
       echom "Unable to get DAP port - is JDT.LS initialized?"
       let s:jdt_ls_debugger_port = 0
       return
     endif
  endif

  " Start debugging with the DAP port
  call vimspector#LaunchWithSettings( { 'DAPPort': s:jdt_ls_debugger_port } )
  endfunction

  nnoremap <silent> <buffer> <F5> :call <SID>StartDebugging()<CR> let g:EclimFileTypeValidate = 0
]]
