import sys


def parse_log_file(filename, keyword):
    total_time = 0
    iteration = 0
    with open(filename, 'r') as fp:
        for line in fp.readlines():
            line = line.strip()
            if keyword in line:
                tokens = line.split('=')
                if len(tokens) < 2:
                    continue
                time = float(tokens[1])
                total_time += time
                iteration += 1

    return total_time/iteration


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Please specify the log file!")
        exit(0)

    avg_time = parse_log_file(sys.argv[1], sys.argv[2])
    print(sys.argv[2], "avg time ", end='= ')
    print("%.2f" % avg_time)
