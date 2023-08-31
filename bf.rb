a,*b=$<.read,c=d=n=0
(t,m=a[d],-1
t[?.]&&$><<b[c].chr
t[?,]&&b[c]=STDIN.getc.ord
t[?+]&&b[c]+=1
t[?-]&&b[c]-=1
t[?>]&&b[c+=1]||=0
t[?<]&&c-=1
b[c]==0?t[?[]&&n=m=1:t[?]]&&n=1
(a[d+=m][?[]&&n+=m
a[d][?]]&&n-=m)while n>0
d+=1)while a[d]
