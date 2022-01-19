*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA text, A1    ;loads text to memory
    MOVE #14, D0    ;moves 14 to d0
    TRAP #15        ;Displays output
    MOVE #4, D0     ;moves 4 into d0
    TRAP #15        ;Displays output
    MOVE D1, $3060  ;moves d1 to memory location 3060
    MOVE #3, D0     ;moves 3 into d0
    TRAP #15        ;displays output

    SIMHALT             ; halt simulator

* Put variables and constants here
text dc.b 'Please enter your gamer points here: ',0

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
