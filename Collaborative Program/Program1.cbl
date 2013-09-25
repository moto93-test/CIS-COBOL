      ******************************************************************
      * Program:   Simple Counter                                      * 
      * Author:    Kyle Pennacchio                                     *
      * Status:    Working                                             *
      * Bugs:      If an answer is longer than one letter the program  *
      *            will throw an error                                 *
      ******************************************************************                    
       
       program-id. Program1 as "Program1".
       
       environment division.
       configuration section.
       
       data division.
       working-storage section.
       01 meep pic 999.
       01 meep2 pic x value "y".
       
       procedure division.
       display "simple program that counts to 20 asking the user every"
       " increment if they want to continue"
       display " "
       perform varying meep from 0 by 1
           until meep > 20
               display meep
               display "shall we keep going? (y or n)"
               accept meep2
               perform Input-Check
       end-perform
       stop run.
       
       Y-Check.
       if meep2 = "y" or "Y"
           continue
       else 
           perform Input-Check.
           
       N-Check.
       if meep2 = "n" or "N"
           stop "Okay we will stop counting. Press enter to exit."
           stop run
       else
           perform Y-Check.
           
       Input-Check.
       perform until meep2 not equal " "
           display "Please enter a valid answer."
           accept meep2
       end-perform
           perform N-Check.
       
       end program Program1.
