import math


def factorize(n):
    # find all the prime factors of n
    factors = []
    while n % 2 == 0:
        factors.append(2)
        n //= 2
    for i in range(3, int(math.sqrt(n)) + 1, 2):
        while n % i == 0:
            factors.append(i)
            n //= i
    if n > 2:
        factors.append(n)
    return factors


def recover_pq_phi(e, d):
    # recover the primes p and q and the value of Phi(n) from the RSA public key e and private key d
    ed_minus_one = e * d - 1
    print(ed_minus_one)
    factors = [2, 2, 2, 5, 11, 11, 19, 43, 142007, 2675741, 19163167, 5787635181739, 19375436221507, 63374736884807, 1306638005271791]
    # find the prime factors p and q of n
    for p in factors:
        q = ed_minus_one // p
        if 127 >= math.log2(p) >= 126 and 127 >= math.log2(q) >= 126:
            phi_n = (p - 1) * (q - 1)
            return p, q, phi_n
    raise ValueError('Failed to recover modulus')


def modinv(a, m):
    # calculate the modular inverse of a mod m using the extended Euclidean algorithm
    if math.gcd(a, m) != 1:
        raise ValueError('a and m are not coprime')
    x, y = 0, 1
    last_x, last_y = 1, 0
    while m != 0:
        q = a // m
        a, m = m, a % m
        x, last_x = last_x - q * x, x
        y, last_y = last_y - q * y, y
    return last_x


def recover_message(e, d, n, c):
    # recover the plaintext message m from the RSA public key e, private key d, modulus n, and ciphertext c
    return pow(c, d, n)


# given values
e = 65537
d = 4079679662752637389546179093829672025927792371547214378749830574433664508233
c = 5493083902536499656897449716302854636823299703985078604996963377020402368855

# recover p, q, and Phi(n)
p, q, phi_n = recover_pq_phi(e, d)

# calculate the modular inverse of e mod Phi(n)
d = modinv(e, phi_n)

# recover the plaintext message
n = p * q
m = recover_message(e, d, n, c)

print('p =', p)
print('q =', q)
print('Phi(n) =', phi_n)
print('m =', m)
