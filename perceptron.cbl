       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERCEPTRON.
       AUTHOR. Victor Ribeiro.
       DATE-WRITTEN. May 30th 2020.
       
       ENVIRONMENT DIVISION.
            INPUT-OUTPUT SECTION.
                FILE-CONTROL.
                    SELECT TRAINING ASSIGN TO "DATA.DAT"
                       ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
            FILE SECTION.
                FD TRAINING.
                    01 X.
                        02 FEATURE1 PIC X(4).
                        02 FEATURE2 PIC X(4).
                        02 FEATURE3 PIC X(4).
                        02 FEATURE4 PIC X(4).
                        02 Y PIC 9.
      
            WORKING-STORAGE SECTION.
                01 LR PIC S99V9999 VALUE 00.0010.
                01 ERR PIC S99V9999.
                01 B PIC S99V9999.
                01 W1 PIC S99V9999.
                01 W2 PIC S99V9999.
                01 W3 PIC S99V9999.
                01 W4 PIC S99V9999.
                01 IT PIC 99 VALUE 10.
                01 PREDICTION PIC S99V9999.
                01 FEAT1 PIC 9V9.
                01 FEAT2 PIC 9V9.
                01 FEAT3 PIC 9V9.
                01 FEAT4 PIC 9V9.
                01 TMP PIC S99V9999.
                01 F1 PIC S99V99.
                01 F2 PIC S99V99.
                01 F3 PIC S99V99.
                01 F4 PIC S99V99.
                
            
       PROCEDURE DIVISION.
           COMPUTE B = FUNCTION RANDOM
           COMPUTE W1 = FUNCTION RANDOM
           COMPUTE W2 = FUNCTION RANDOM
           COMPUTE W3 = FUNCTION RANDOM
           COMPUTE W4 = FUNCTION RANDOM
           PERFORM IT TIMES
              OPEN INPUT TRAINING
              PERFORM 100 TIMES
                 READ TRAINING INTO X
                     MOVE FEATURE1 TO FEAT1
                     MOVE FEATURE2 TO FEAT2
                     MOVE FEATURE3 TO FEAT3
                     MOVE FEATURE4 TO FEAT4
                     COMPUTE PREDICTION = B
                     COMPUTE PREDICTION = PREDICTION + W1 * FEAT1
                     COMPUTE PREDICTION = PREDICTION + W2 * FEAT2
                     COMPUTE PREDICTION = PREDICTION + W3 * FEAT3
                     COMPUTE PREDICTION = PREDICTION + W4 * FEAT4
                     COMPUTE ERR = Y - PREDICTION
                     COMPUTE B = B + ERR * LR
                     COMPUTE TMP = W1 * FEAT1 * ERR * LR
                     COMPUTE W1 = W1 + TMP
                     COMPUTE TMP = W2 * FEAT2 * ERR * LR
                     COMPUTE W2 = W2 + TMP
                     COMPUTE TMP = W3 * FEAT3 * ERR * LR
                     COMPUTE W3 = W3 + TMP
                     COMPUTE TMP = W4 * FEAT4 * ERR * LR
                     COMPUTE W4 = W4 + TMP
             END-PERFORM
             CLOSE TRAINING
           END-PERFORM
           DISPLAY "ENTER 4 VALUES"
           ACCEPT F1
           ACCEPT F2
           ACCEPT F3
           ACCEPT F4
           COMPUTE PREDICTION = B + W1 * F1
           COMPUTE PREDICTION = PREDICTION + W2 * F2
           COMPUTE PREDICTION = PREDICTION + W3 * F3
           COMPUTE PREDICTION = PREDICTION + W4 * F4
           IF PREDICTION > 0.5
               DISPLAY "1"
           ELSE
               DISPLAY "0"
           END-IF
           STOP RUN.
