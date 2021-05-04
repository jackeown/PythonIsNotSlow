program benchmark
    implicit none
    character(len=100) :: arg
    integer :: n, istat
    real, dimension(:,:), allocatable :: m1, m2, m3
    
    call GET_COMMAND_ARGUMENT(1,arg)
    read(arg,'(I100)') n
    
    allocate(m1(n,n))
    allocate(m2(n,n))
    allocate(m3(n,n))
    
    call RANDOM_NUMBER(m1)
    call RANDOM_NUMBER(m2)
    m3 = MATMUL(m1, m2)
    
    deallocate(m1)
    deallocate(m2)
    deallocate(m3)
    
end program
