package main

//标准库

//标准库

// func main() { // 声明并初始化带缓冲的读取器 // 准备从标准输入中读取内容
// 	inputReader := bufio.NewReader(os.Stdin)
// 	fmt.Println("Please input your name:") // 以 \n 为分隔符读取一段内容
// 	input, err := inputReader.ReadString('\n')
// 	if err != nil {
// 		fmt.Printf("Found an error : %s\n", err)
// 	} else { // 对 input 进行切片操作，去掉内容中最后一个字节 \n
// 		input = input[:len(input)-1]
// 		log.Printf("Hello, %x!\n", input)
// 	}
// }