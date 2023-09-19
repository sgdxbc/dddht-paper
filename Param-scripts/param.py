from mpmath import *
# code to find n given k for enthropy paper with guangda

k = 32
n = 50
N = 10000
N = N/3 * 3
lam = -64


while(1):
    sum = mpf(0)
    for i in range(k+1):
        j = n-i
        a = binomial(N/3,j)
        b = binomial(2*(N/3),n-j)
        c = binomial(N,n)
        
        d = fmul(a,b)
        e = fdiv(d,c)
        sum = fadd(sum,e)
    '''
    # some sanity check
    if(n==80):
        print("Sum")
        nprint(sum,100)
        l = log(sum,2)
        print("test")
        print(l)
        print("Act")
        nprint(power(2,l),100)
        break
    '''
    nprint(sum,100)
    if(sum<power(2,lam)):
        #if smaller than epsil, return the corresponding n. 
        print("FINAL: " +str(n))
        break
    n += 1



# this should be the exact values

# hoeffding bound 
t = 2*n/3-k
tsq = power(t,2)/n

bound = exp(-2*(tsq))
print("heoffding")
nprint(bound,100)


