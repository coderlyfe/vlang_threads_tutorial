import time

fn com_thread(f chan int, start int, finish int){
	time.sleep(1000000000)
	f <- 3
	for i in start..finish {
		f <- i
	}
	
}

fn main() {
	ch := chan int {}
	mut recv := int(0)
	go com_thread(ch, 100, 115)
	go com_thread(ch, 10, 25)
	go com_thread(ch, 35, 75)

	
	for {
		recv = <- ch
		println(recv)
	}
	
	



}