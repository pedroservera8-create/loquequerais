*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.B  #5,$1100
    ADD.B   #3,$1100
    
    MOVE.B  #7,D1
    ADD.B   #2,D1
    MOVE.B  D1,$1100
    
    
    LEA MESSAGE,A1
    MOVE.W A1,A2
    
    MOVE.B #$57, (A2)+
    MOVE.B #$65, (A2)+
    MOVE.B #$6C, (A2)+
    MOVE.B #$6C, (A2)+
    MOVE.B #$6F, (A2)+
    MOVE.B #$48, (A2)+
    MOVE.B #$6F, (A2)+
    MOVE.B #$72, (A2)+
    MOVE.B #$6C, (A2)+
    MOVE.B #$64, (A2)+
    MOVE.B #$65, (A2)+
    MOVE.B #$73, (A2)+
    MOVE.B #$74, (A2)+
    MOVE.B #$6F, (A2)+
    MOVE.B #$79, (A2)+
    MOVE.B #$20, (A2)+
    MOVE.B #$70, (A2)+
    MOVE.B #$61, (A2)+
    MOVE.B #$74, (A2)+
    MOVE.B #$61, (A2)+
    MOVE.B #$74, (A2)+
    MOVE.B #$61, (A2)+
    MOVE.B #$00, (A2)+ ; PETA
    
  

    
    * Mostrar texto de (A1) en pantalla
    MOVE.B  #14,D0
    TRAP    #15

    SIMHALT             ; halt simulator

* Put variables and constants here
MESSAGE DC.B    'WelloHorld',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
