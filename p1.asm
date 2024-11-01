#CS 2640
#Group members: Sarah Huynh, Ashley Mapes, Sayumi Amarasinghe, Samuel Ji
#11/01/2024
#Program 1: Getting Familiar with Assembly
# 1) gets 2 ints from user 
# 2) move them to registers
# 3) print them back to the user
# 4) complete arithmetic operations to the 2 ints
# 5) print results of operations to the user
# 6) practice conditions
# 7) exit program 

.data 
prompt1: .asciiz "Please enter a first integer value: "
prompt2: .asciiz "Please enter a second integer value: "
newline: .asciiz "\n"

.text
main:
    # print out prompt 
    li $v0, 4
    la $a0, prompt1
    syscall
    
    #get first integer 
     li $v0, 5
     syscall
     move $s0, $v0

    #print second prompt 
     li $v0, 4
     la $a0, prompt2
     syscall
     
     #get second integer 
     li $v0, 5
     syscall
     move $s1, $v0
     
     
     #print first integer
     li $v0, 1
     move $a0, $s0
     syscall
     
     #print newline 
     li $v0, 4
     la $a0, newline
     syscall
     
     
     #print second integer
     li $v0, 1
     move $a0 ,$s1
     syscall 
        
    
    #exit syscall
    li $v0, 10
    syscall