import string
import math
import itertools
from Crypto.Util.number import *
from gmpy2 import *


def powerset(iterable):
    s = list(iterable)
    return chain.from_iterable(combinations(s, r) for r in range(len(s) + 1))


def another_set(all, subset):
    for s in subset:
        all.remove(s)
    return tuple(all)


e = 65537
expect_size = 126.5
# input this by hand:
d_mod_phi = 43426863220805263560589480347718563668066304974216311847437992414100301558097
cipher = 41216654325911364202799454943531145763340720962581903907617881080753280961516

one_mod_phi = d_mod_phi * e
k_phi = one_mod_phi - 1
to_fact = k_phi // 4
print(to_fact)

#input this by hand:
facts = [2, 2, 11, 37, 41, 30341, 217747, 23394949, 68967200268833420686893534497054112726977651362013783431393]
log2facts = list(map(lambda x: math.log2(x), facts))
target_sum_1 = 126.5
target_sum_2 = 126.5
target_sum_3 = math.log2(one_mod_phi) - 253

# Generate all possible combinations of factors
combinations = list(itertools.combinations(log2facts, len(log2facts)//3))

# Find the combination that has a sum closest to the first target sum
closest_sum_1 = float('inf')
closest_combo_1 = None

for combo in combinations:
    combo_sum = sum(combo)
    if abs(combo_sum - target_sum_1) < closest_sum_1:
        closest_sum_1 = abs(combo_sum - target_sum_1)
        closest_combo_1 = combo

# Find the combination that has a sum closest to the second target sum
remaining_factors = [factor for factor in log2facts if factor not in closest_combo_1]
combinations = list(itertools.combinations(remaining_factors, len(remaining_factors)//2))

closest_sum_2 = float('inf')
closest_combo_2 = None

for combo in combinations:
    combo_sum = sum(combo)
    if abs(combo_sum - target_sum_2) < closest_sum_2:
        closest_sum_2 = abs(combo_sum - target_sum_2)
        closest_combo_2 = combo

# Find the combination that has a sum closest to the third target sum
remaining_factors = [factor for factor in remaining_factors if factor not in closest_combo_2]
combinations = list(itertools.combinations(remaining_factors, len(remaining_factors)))

closest_sum_3 = float('inf')
closest_combo_3 = None

for combo in combinations:
    combo_sum = sum(combo)
    if abs(combo_sum - target_sum_3) < closest_sum_3:
        closest_sum_3 = abs(combo_sum - target_sum_3)
        closest_combo_3 = combo

# Print the three groups
group1 = closest_combo_1
group2 = closest_combo_2
group3 = closest_combo_3

print("u:", group1)
print("v:", group2)
print("k:", group3)

u = 1
for it in group1:
    u *= round(2 ** it)

v = 1
for it in group2:
    v *= round(2 ** it)

k = 1
for it in group3:
    k *= round(2 ** it)

p = 2 * u + 1
q = 2 * v + 1
phi = (p - 1) * (q - 1)
n = p * q
plain = pow(cipher, d_mod_phi, n)
print(plain)
print(long_to_bytes(plain))
print(long_to_bytes(plain).decode())
