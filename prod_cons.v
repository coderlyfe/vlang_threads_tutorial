fn producer(c chan int){
	i := 30
	for{
		c <- i
	}
}

fn consumer(c chan int){
	mut i := int(0)
	for{
		i = <- c
		println(i)
	}
}

fn main(){
	ch := chan int{}
	go producer(ch)
	go consumer(ch)

	for{

	}
}