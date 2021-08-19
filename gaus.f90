!
!           Science/Calculate for Fortran
!
!            (Gaus Integeral(가우스 적분))
!
!              Author: Shin Hyeon Kyu
!
!                 Date: 2021-08-18
!

program gaus
    Real x, y
    x = 0
    y = 0
    open(19, FILE='gaus.dat', status='NEW')
    do 10 i = -100, 100
        x = Real(i)/10
        y = (y + exp(-x**2)) / 10
        write(19, *) x, y
10  continue
    close(19)
end program