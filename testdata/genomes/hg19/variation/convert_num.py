import sys

out_file = sys.argv[1].replace(".orig", "")

with open(sys.argv[1]) as in_handle:
    with open(out_file, "w") as out_handle:
        for line in in_handle:
            if not line.startswith("#"):
                parts = line.split("\t")
                parts[1] = str(int(parts[1]) - 40000000)
                line = "\t".join(parts)
            out_handle.write(line)
