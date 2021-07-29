import sync

struct IntWrapper {
	mut:
		i int
}

fn (shared s IntWrapper) add_ten(mut wg sync.WaitGroup){
	lock s {
		s.i += 10
	}
	wg.done()
}

fn main(){
	
	shared s :=  &IntWrapper{ i: 25}
	mut wg := sync.new_waitgroup()
	wg.add(4)
	go s.add_ten(mut wg)
	go s.add_ten(mut wg)
	go s.add_ten(mut wg)
	go s.add_ten(mut wg)
	wg.wait()
	 rlock s {
		 println(s.i)
	}


}