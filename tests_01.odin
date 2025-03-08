package test

import "core:fmt"
import p_str "python_string_functions"
print :: fmt.println

main :: proc() {
	print(minimumRecolors(blocks="WBBWWBBWBW", k=7))
	print(minimumRecolors(blocks="WBWBBBW", k=2))
	// OUTPUT:
	// 3
	// 0
}


minimumRecolors :: proc(blocks: string, k: int) -> int {
	goal := p_str.string_from_repeated_rune('B', k)
	defer delete(goal)

	end_num := len(blocks) - k
	min := INT_MAX
	temp := 0

	for i in 0 ..< end_num + 1 {
		for j in 0 ..< len(goal) {
			if goal[j] != blocks[j + i] {
				temp += 1
			}
		}
		if temp < min {
			min = temp
		}
		temp = 0
	}

	return min
}
