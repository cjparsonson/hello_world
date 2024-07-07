#
# Risc-V Assembler program to print "Hello RISC-V World!"
# to the Espressif SDK monitor program through the microUSB.
#
# a0 - address of helloworld string
#

.global app_main

# Setup the parameter to print hello world
# and then call SDK to do it.

app_main:
        la a0, helloworld
        call puts
        j app_main

.data
helloworld: .asciz "Hello RISV V Ravioli!"
