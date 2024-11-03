#CS 2640
#Group members: Sarah Huynh, Ashley Mapes, Sayumi Amarasinghe, Samuel Ji
#11/01/2024
#Program 1: Getting Familiar with Assembly
#Github Repo Link: https://github.com/SASS2640/CS2640-P1
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
prompt3: .asciiz "First integer is: " 
prompt4: .asciiz "Second integer is: " 
prompt5: .asciiz "Result of addition between the two numbers is: " 
prompt6: .asciiz "Result of subtraction between the two numbers is: " 
prompt7: .asciiz "Result of multiplication between the two numbers is: " 
prompt8: .asciiz "Result of division between the two numbers is: "
equal_message:	.asciiz "User inputs are the same"
not_equal_message: .asciiz "User inputs are different"
newline: .asciiz "\n" 

.macro exit
		li $v0, 10
		syscall
.end_macro

.text
main:
	# PART 1
    	# print out prompt1 
    	li $v0, 4
    	la $a0, prompt1
    	syscall
    
    	# get first integer 
     	li $v0, 5
     	syscall
     	move $s0, $v0

    	# print second prompt2
     	li $v0, 4
     	la $a0, prompt2
     	syscall
     
     	# get second integer 
     	li $v0, 5
     	syscall
     	move $s1, $v0
     
     	# print out prompt3
     	li $v0, 4
     	la $a0, prompt3
     	syscall
     
     	# print first integer
     	li $v0, 1
     	move $a0, $s0
     	syscall
     
     	# print newline 
     	li $v0, 4
     	la $a0, newline
     	syscall
     
     	# PART 2
     	# print out prompt4
     	li $v0, 4
     	la $a0, prompt4
     	syscall
     
     	# print second integer
     	li $v0, 1
     	move $a0 ,$s1
     	syscall 
     
     	# print newline 
     	li $v0, 4
     	la $a0, newline
     	syscall
      
     	# add two integers 
     	add $s2, $s0, $s1
     
     	# print out prompt5
     	li $v0, 4
     	la $a0, prompt5
     	syscall
     
     	# print out the result of the addition 
     	li $v0, 1
     	move $a0, $s2
     	syscall
     
     	# print new line
     	li $v0, 4
     	la $a0, newline
     	syscall
     
     	# subtract two integers 
     	sub $s2, $s0, $s1
     
     	# print out prompt6
     	li $v0, 4
     	la $a0, prompt6
     	syscall
     
     	# print out the result of subtraction 
     	li $v0, 1
     	move $a0, $s2
     	syscall
     
     	# print new line
     	li $v0, 4
     	la $a0, newline
     	syscall
     
     	# mutiply two integers
     	mul $s2, $s0, $s1 
     
     	# print out prompt7
     	li $v0, 4
     	la $a0, prompt7
     	syscall
     
     	# print out the result of the multiplication
     	li $v0, 1 
     	move $a0, $s2 
     	syscall 
     
     	# print newline 
     	li $v0, 4
     	la $a0, newline
     	syscall
     
     	# division 
     	div $s0, $s1 
     	mflo $s2 
     
     	# print out prompt8 
     	li $v0, 4
     	la $a0, prompt8
     	syscall
    
     	# print out the result of the divison
     	li $v0, 1 
     	move $a0, $s2
     	syscall 
     
    	# PART 3
    	# if the two user inputs from Task 1 are equal to each other, output "User inputs are the same"
    	# if the two user inputs from Task 1 are not equal to each other, output "User inputs are different"
	#print newline 
     	li $v0, 4
     	la $a0, newline
     	syscall
     	
     	# compare if equal to
	beq $s0, $s1, equal
	#compare if not equal to
	bne $s0, $s1, not_equal
	
equal:
	# print equal message
	li $v0, 4
	la $a0, equal_message
	syscall
	
	# call exit macro
	exit
	
not_equal:
	# print not equal message
	li $v0, 4
	la $a0, not_equal_message
	syscall
	
	# call exit macro
	exit
