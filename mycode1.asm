.MODEL small
.STACK 100h
.DATA
hl1 db 13,10,'   _____ _                       _              _____              _ ',13,10, 
hl2 db 13,10,'  / ____| |                     (_)            / ____|            | |',13,10,
hl3 db 13,10,' | (___ | |__   ___  _ __  _ __  _ _ __   __ _| |     __ _ _ __ __| |',13,10,
hl4 db 13,10,'  \___ \|  _ \ / _ \|  _ \|  _ \| |  _ \ / _` | |    / _` |  __/ _` |',13,10,
hl5 db 13,10,'  ____) | | | | (_) | |_) | |_) | | | | | (_| | |___| (_| | | | (_| |',13,10,
hl6 db 13,10,' |_____/|_| |_|\___/| .__/| .__/|_|_| |_|\__, |\_____\__,_|_|  \__,_|',13,10,
hl7 db 13,10,'                    | |   | |             __/ |                      ',13,10,
hl8 db 13,10,'                    |_|   |_|            |___/                       $',13,10,
msg1 db 13,10,'how many products do you have?$',13,10,
msg2 db 13,10,'enter the name of your product:$',13,10,
msg3 db 13,10,'enter the price of your product:$',13,10,
msg4 db 13,10,'your products are:$',13,10,
msg5 db 13,10,'the most expensive product is:$',13,10,
msg6 db 13,10,'the cheapest product is:$',13,10,
msg7 db 13,10,'hit any key to exit:$',13,10,
products dw 120 dup ('$$');the array of the products    
counter dw 0;helps canculate things and go to different locations in the array 
maxNum dw 0;helps fingding the max price of all the products 
minNum dw 0;helps finding the min price of all the products
.CODE
start:

    mov ax,@data
    mov ds,ax
    xor ax,ax
     
    lea dx,hl1
    mov ah,09h
    int 21h
    lea dx,msg1
    mov ah,09h
    int 21h 
    mov ah,1
    int 21h 
    
    xor cx,cx
    mov cl,al
    sub cl,30h 
    push cx
productLoop:

    call productNameInput
    call productPriceInput
    loop productLoop
    
    pop cx 
    push cx  
    mov counter,0
    call printShoppingCard
    pop cx
    push cx
    call expensiveProduct
    pop cx
    call CheapestProduct
    jmp exit
           
          
proc productNameInput ;the proc uses ax,bx,dx and counter 
    
    lea dx,msg2
    mov ah,9h
    int 21h
    lea bx,products
    add bx,counter
    lea dx,bx
    mov [byte ptr bx],10
    mov ah,0ah
    int 21h 
    add counter,0ah
    ret
endp productNameInput ;the proc puts inside the array a name of a product

 
 
proc productPriceInput;the proc uses ax,bx,dx and counter
    
    lea dx,msg3
    mov ah,9h
    int 21h
    lea bx,products
    add bx,counter
    lea dx,bx
    mov [byte ptr bx],3
    mov ah,0ah
    int 21h
    add counter,6h    
    ret
endp productPriceInput;the proc puts inside the array a price of a product

                

proc printShoppingCard;the proc uses ax,bx,cx,dx and counter
    
    lea dx,msg4
    mov ah,09h
    int 21h
    mov counter,2h
printLoop:

    mov dl,0dh
    mov ah,2
    int 21h 
    
    mov dl,0ah
    mov ah,2
    int 21h
    
    lea bx,products
    add bx,counter
    lea dx,bx
    mov ah,09h
    int 21h 
    
    mov dl,0ah
    mov ah,02h
    int 21h
    
    lea bx,products
    add counter,0ah
    add bx,counter
    lea dx,bx
    mov ah,09h
    int 21h  
    
    add counter,6h  
    loop printLoop 
    ret
endp printShoppingCard;the proc prints every product with his price



proc expensiveProduct;the proc uses ax,bx,cx,dx,bp,di,counter and maxNum
     
   mov counter,0ch 
   lea bx,products
   add bx,counter
   add counter,10h
   lea bp,[bx-0ah]
   mov counter,0 
   sub cx,1h 
   mov ax,[bx]
   lea di,maxNum
   mov [di],ax
   
maxNumLoop:
   
    lea bx,products
    add bx,0ch
    add counter,10h
    add bx,counter
    mov ax,[bx]
    
    cmp ax,maxNum
    ja changeMaxNum
    jmp endOfExpensiveLoop
    
changeMaxNum:

    mov ax,[bx]
    lea di,maxNum
    mov [di],ax
    lea bp,[bx-0ah]
    
endOfExpensiveLoop:   

    loop maxNumLoop
    lea dx,msg5
    mov ah,09h
    int 21h 
    
    mov dl,0dh
    mov ah,2
    int 21h
    mov dl,0ah
    mov ah,2
    int 21h
    
    lea bx,bp
    lea dx,bx
    mov ah,09h
    int 21h
    ret
endp expensiveProduct;the proc prints the most expensive product



proc cheapestProduct;the proc uses ax,bx,cx,dx,bp,di,counter and minNum
    
   mov counter,0ch 
   lea bx,products
   add bx,counter
   add counter,10h
   lea bp,[bx-0ah]
   mov counter,0 
   sub cx,1h 
   mov ax,[bx]
   lea di,minNum
   mov [di],ax
   
minNumLoop:
   
    lea bx,products
    add bx,0ch
    add counter,10h
    add bx,counter
    mov ax,[bx]
    
    cmp ax,minNum
    jl changeMinNum
    jmp endOfCheapestLoop
    
changeMinNum:

    mov ax,[bx]
    lea di,minNum
    mov [di],ax
    lea bp,[bx-0ah]
    
endOfCheapestLoop:   

    loop minNumLoop
    lea dx,msg6
    mov ah,09h
    int 21h 
    
    mov dl,0dh
    mov ah,2
    int 21h
    mov dl,0ah
    mov ah,2
    int 21h
    
    lea bx,bp
    lea dx,bx
    mov ah,09h
    int 21h
    ret
endp cheapestProduct;the proc print the cheapest product


exit:
lea dx,msg7
mov ah,09h
int 21h 
mov ah,01h
int 21h
mov ah,4ch
int 21h 
END start