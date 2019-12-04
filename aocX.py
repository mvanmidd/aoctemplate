from collections import *
from itertools import *
import numpy as np
import pandas as pd

from mvutil import write_to_clipboard, try_int

DAY = "4"
TESTDAY = DAY + ".test"
# DAY = TESTDAY  # TODO delete me after testing

# List of lines as string
inl = [l.strip() for l in open("aoc{}.in".format(DAY)).readlines()]
# Lines split on space, parsing ints if possible
insp = [tuple(try_int(s) for s in l.split(" ")) for l in inl]
# Lines split on comma, parsing ints if possible
inco = [tuple(try_int(s) for s in l.split(",")) for l in inl]


out = None
for i, l in enumerate(insp):
    print(i, ":", l)
    # The Code


write_to_clipboard(out)
