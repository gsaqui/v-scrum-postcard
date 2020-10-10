import os
import vweb

const (
	port = 8082
)

struct App {
pub mut:
	vweb vweb.Context // TODO embed
	cnt int
}


fn main(){
	vweb.run<App>(port)
	println("hello world")

	// if os.exists('./firstTest.txt') {
	// 	println("it exists")
	// 	file := os.read_file('./firstTest.txt')  or {
	// 		println("failed!")
	// 		return
	// 	}
	// 	text += file
	// 	println(file)
		
		
	// }
	// println("about to write")
	// os.write_file("./firstTest.txt", text)
}


pub fn (mut app App) init_once() {
	app.vweb.handle_static('.')
}

pub fn (mut app App) init() {
}

pub fn (app mut App) index() {
	//println('number of posts=$posts.len')
	$vweb.html()
}