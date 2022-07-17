subroutine output
	real, dimension(100)::x,y
	real, dimension(100)::p,q
	integer::i
	do i=1,100
		x(i)=i*0.1
		y(i)=sin(x(i))*(1-cos(x(i)/3.0))
	end do
	
	! output data into file
	open (10,file='output.dat',status='new')
	do i=1,100
		write(10,*) x(i),y(i)
	end do
	close(10)
end subroutine output

! Write a subroutine to read input files
subroutine read_input
	write(*,*)"Read input"

end subroutine read_input


program read_mesh
implicit none

! 10 = input file (input.inp)
! 11 = pressure.dat
! 12 = ux.dat
integer::i,j,k
write(*,*)"Hello World!"
call output()
stop
end program read_mesh


