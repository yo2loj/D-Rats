
def global_debug():

   
    #creating a varibale fr each module so to be able to have a selective logging for each module whihc compose D-Rats
    global DEBUG_MAINAPP
    DEBUG_MAINAPP=True
    if DEBUG_MAINAPP: print("Debug    : Enabled debug log for module: Mainapp")

    global DEBUG_MAINWINDOW
    DEBUG_MAINWINDOW=True
    if DEBUG_MAINWINDOW: print("Debug    : Enabled debug log for module: Mainwindow")

    global DEBUG_MAPDISPLAY
    DEBUG_MAPDISPLAY=True
    if DEBUG_MAPDISPLAY: print("Debug    : Enabled debug log for module: Mapdisplay")
