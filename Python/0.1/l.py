def fizzBuzz(n):

    i = 1

    while i < n+1:

        if i % 3 == 0 and i % 5 == 0:
            print("FIZZBUZZ")
            i += 1

        elif i % 3 == 0:
            print("Fizz")
            i += 1

        elif i % 5 == 0:
            print("Buss")
            i += 1

        else:
            print(i)
            i += 1


if __name__ == '__main__':
    n = int(input().strip())

    fizzBuzz(n)

