def getMemoryInfo() {
    def memInfo = [:]
    new File('/proc/meminfo').eachLine { line ->
        def (key, value) = line.split(':')
        memInfo[key.trim()] = value.trim()
    }
    println "Total Memory: ${memInfo['MemTotal']}"
    println "Free Memory: ${memInfo['MemFree']}"
}

def getDiskInfo() {
    def proc = "df -h /".execute()
    proc.in.eachLine { println it }
}

def getCPUInfo() {
    def proc = "lscpu".execute()
    proc.in.eachLine { println it }
}

println "================== VM Memory Details =================="
getMemoryInfo()
println "================== VM Disk Details =================="
getDiskInfo()
println "================== VM CPU Details =================="
getCPUInfo()
