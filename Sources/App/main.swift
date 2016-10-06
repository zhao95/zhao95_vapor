import Vapor
import VaporMySQL




let drop = Droplet()

drop.get { req in
    let lang = req.headers["Accept-Language"]?.string ?? "en"
    return try drop.view.make("welcome", [
    	"message": Node.string(drop.localization[lang, "welcome", "title"])
    ])
}

drop.resource("posts", PostController())


drop.get("nimei") { req in
    return "Hello, world.  gogog~~~"
}

drop.get("/name",":name") { request in
    //http://0.0.0.0:8080/name/jsonss  = Hello jsonss!
    if let name = request.parameters["name"]?.string {
        return "Hello \(name)!"
    }
    return "Error retrieving parameters."
}


// 展示界面   直接是H5 标签语言 就可以了
drop.get("/view") { (Request) in
    return try drop.view.make("view.html")
}




do {let mysql = try VaporMySQL.Provider(host: "127.0.0.1", user: "root", password: "123456", database: "MySQL1")} catch {
    print("有错误")
}
// 上边如果不填写就 就是默认port: 3306, flag: 0, encoding: "utf8"
let mysql2 = try! VaporMySQL.Provider(host: "127.0.0.1", user: "root", password: "123456", database: "MySQL1", port: 3306, flag: 0, encoding: "utf8")


let dropMysql = Droplet(initializedProviders: [mysql2])




let MySQLDriver000 = try MySQLDriver(host: "127.0.0.1", user: "root", password: "123456", database: "MySQL1", port: 3306, flag: 0, encoding: "utf8")

//let o = try MySQLDriver000.mysql("name")

//print(o)


let Mysqldriver = try MySQLDriver(host: "127.0.0.1", user: "root", password: "123456", database: "MySQL1")





let mysql3 = try MySQLDriver(host: "127.0.0.1", user: "root", password: "123456", database: "MySQL1", port: 3306, flag: 0, encoding: "utf8")







print()









drop.run()
