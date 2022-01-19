*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA text, A1
    MOVE.W #2, D0
    TRAP #15             ;read string and store in a1
    
    MOVE.B #5, D0
    TRAP #15           ;read single char and put into d1
    
    MOVE.B #8, D0
    TRAP #15             ;return time in hundredths of second into d1
    
    MOVE.W #63, D1
    MOVE.B #8, D1
    MOVE.B #11, D0
    TRAP #15            ;position of cursor
    
    MOVE.B #13, D0
    TRAP #15            ;display string in a1
    
    MOVE.B #17, D0
    TRAP #15           ;displays string in a1 and displays decimal number in d1
    
    MOVE.B #18, D0
    TRAP #15           ;displays string in a1 and read number from keyboard into d1
    
    MOVE.L #$006587, D1
    MOVE.B #%0101, D2
    MOVE.B #21, D0
    TRAP #15           ;set font color to rgb of d1 and d2
    
    MOVE.B #13, D0
    TRAP #15            ;display string in a1

    SIMHALT             ; halt simulator

* Put variables and constants here
text dc.b 'Please enter input: ' ,0


    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
