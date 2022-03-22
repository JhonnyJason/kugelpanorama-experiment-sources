export name = "backgroundmodule"
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["backgroundmodule"]?  then console.log "[backgroundmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
import { Viewer } from 'photo-sphere-viewer'

############################################################
viewer = null

############################################################
export initialize = ->
    log "backgroundmodule.initialize"
    if !background? then background = document.getElementById("background") 
    options = 
        container: background
        panorama: "/img/test-panorama.jpg"
    viewer = new Viewer(options)
    return
    
