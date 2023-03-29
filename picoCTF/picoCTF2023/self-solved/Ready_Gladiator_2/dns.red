;redcode
;name Dark and Stormy 2022GM sczd
;author Steve Gunnell
;strategy Origin of Storms clone
;assert 1

ptr: sne 2 ,8
go add step ,ptr
p: mov bomb ,}ptr
mov bomb ,>ptr
djn @p ,#0

bomb: spl #1 ,1
mov step ,>ptr
mov step ,>ptr
djn.f -1 ,>ptr
step dat 1 ,1

for 47
dat 0 ,0
rof

setup mul.ab #-8 ,#7
mul.a #6 ,-1
add.f setup ,1
mul.ab #8 ,#5
add.b -1 ,<setup
sub.a -2 ,*setup
sub.ab -3 ,*setup
div.ab *setup ,#-1
ptr2 add.b setup ,#-4
mov.b -2 ,@ptr2
sub.ab #3 ,ptr2
spl @ptr2 ,0
sub.f ptr2 ,ptr2

end setup
end
