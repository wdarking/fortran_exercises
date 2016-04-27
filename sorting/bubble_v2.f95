program bubblesort_v2
implicit none
integer, parameter :: n=16
integer, dimension(0:n-1) :: a = (/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/)
integer :: i, swap, lenght
logical :: trocou
trocou=.true.
lenght=n
do while (trocou)
  trocou=.false.
  do i=1, lenght-1
    if(a(i-1)>a(i)) then
      swap=a(i-1); a(i-1)=a(i); a(i)=swap;
      trocou=.true.
    end if
  end do
  lenght=lenght-1
end do
print *, a
end program bubblesort_v2