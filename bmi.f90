program bmi
        implicit none
        real :: height, weight

        print *, 'Weight, please! (in kg)'
        read (*,*) weight

        print *, 'Now, your height (in m)'
        read(*,*) height

        write(*,'(A, F10.2)') 'Your bmi is ',  (weight / (height**2))
end program bmi

