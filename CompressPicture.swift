
#!/usr/bin/env xcrun swift

import Foundation

// 判断是否为文件夹
func isDirectory(atPath: String) -> Bool {
    var isDirectory: ObjCBool = ObjCBool(false)
    FileManager.default.fileExists(atPath: atPath, isDirectory: &isDirectory)
    
    return isDirectory.boolValue
}

// Swift3.0用CommandLine获取用户输入命令
// argc是参数个数
guard CommandLine.argc == 2 else {
    print("Argument cout error: it need a file path for argument!")
    exit(0)
}


// arguments是参数
let argv = CommandLine.arguments
let filePath = argv[1]

let fileManager = FileManager.default

var isDirectory: ObjCBool = ObjCBool(false)
guard fileManager.fileExists(atPath: filePath, isDirectory: &isDirectory) else {
    print("The '\(filePath)' file path is not exit!")
    exit(0)
}

guard fileManager.isReadableFile(atPath: filePath) else {
    print("The '\(filePath)' file path is not readable!")
    exit(0)
}

let enumerator: FileManager.DirectoryEnumerator = fileManager.enumerator(atPath: filePath)!

var pngList: [String] = []
while let element = enumerator.nextObject() as? String {
    let absoluteFilePath = filePath + "/" + element
    
    guard fileManager.isReadableFile(atPath: absoluteFilePath) else {
        continue
    }
    
    if absoluteFilePath.hasSuffix(".png") {

        print("Compress \(absoluteFilePath):")
        var  shell = "echo " + absoluteFilePath + " | imageoptim"
        
        let process = Process()
        process.launchPath = "/bin/bash"
        process.arguments = ["-c", shell]
        
        process.launch()
        process.waitUntilExit()     // 等到执行完才进入下一个循环
    }
}









