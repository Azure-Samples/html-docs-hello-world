def ws = manager.build.project.workspace

def web = ws.child("web")

def target = new hudson.FilePath(new java.io.File("/var/www/afp-devel"))
target.mkdirs()
target.deleteContents()

web.copyRecursiveTo(target)
