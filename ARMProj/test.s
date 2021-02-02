   ;???????????
;/*-------------------------------------------------- */
;/*	 			    	constant define				  		
;/*-------------------------------------------------- */
var_1 EQU 4  ;
var_2 EQU 5  ;
ptr EQU 1  ;
con EQU 5
;/*--------------------------------------------------*/
;/*	 					code			 				 		
;/*---------------------------------------------------*/
	area main,code,readwrite
	code32
start
	mov r0, #ptr
	mov r1, #var_1
	mov r2, #var_2
	bleq judge
judge								
	cmp r0, #con					
	adr r3, vector				
	ldr pc, [r3,r0,LSL#2]  ;???????
vector                    ;?????
	dcd func1  
	dcd func2
func1
	add r0, r1, r2					
	bx lr
func2
	sub r0, r1, r2					
	bx lr							
    end	
