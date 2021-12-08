source('/var/task/runtime.R')
tryCatch({
    function_name <- initializeRuntime()
    handle_request(function_name)
    logReset()
    rm(list=ls())
}, error = throwInitError)