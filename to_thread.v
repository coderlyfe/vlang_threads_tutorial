fn print_from_chan(c chan int){
	mut i := int(0)
	for{
		i = <- c
		println(i)
	}
	
}

fn main(){
	ch := chan int{}
	l := 25
	mut inc := 0
	go print_from_chan(ch)
	for {
		if inc == 5 {
			ch.close()
			break
		}
		inc++
		if inc < 6 {
			ch <- l
		}
		
	}

	
	
	

}