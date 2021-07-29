import time

fn pool(thread_num int){
	println("thread # $thread_num")
	time.sleep(1000000000)
}

fn main(){
	mut threads := []thread{}
	threads << go pool(1)
	threads << go pool(2)
	threads << go pool(3)
	threads << go pool(4)
	threads << go pool(5)
	threads.wait()

	println("finished")
}