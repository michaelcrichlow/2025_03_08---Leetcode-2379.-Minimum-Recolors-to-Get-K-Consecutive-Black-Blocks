# Solution accepted! :)
def minimumRecolors(blocks: str, k: int) -> int:
    goal = "B" * k
    end_num = len(blocks) - k
    min = float("inf")
    temp = 0
    for i in range(end_num + 1):
        for j in range(len(goal)):
            if goal[j] != blocks[j + i]:
                temp += 1
        if temp < min:
            min = temp
        temp = 0
    return int(min)


def main() -> None:
    print(minimumRecolors(blocks="WBBWWBBWBW", k=7))  # 3
    print(minimumRecolors(blocks="WBWBBBW", k=2))  # 0


if __name__ == '__main__':
    main()
