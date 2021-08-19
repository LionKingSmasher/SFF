program logIntegral
    Real x, y
    Integer input
    x = 0
    y = 0
    Read(*, *) input
    input = input * 100000
    open(19, FILE="logIntegral.dat", status="NEW")
    do I = 2, input, 1
        x = 2 + Real(I)/100000
	y = (1/log(x))/100000 + y
	Write(19, *) x, y
    enddo
    close(19)
end program
