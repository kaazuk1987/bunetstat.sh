#!/bin/bash
echo "Podaj co chcesz wiedzieć o urządzeniu \n
      1 system      
      2 baseboard   
      3 chassis     
      4 processor   
      5 memory   
      6 cache       
      7 connector   
      8 slot
      9 bios        

"
read d
case "$d" in
  "1") sudo dmidecode -t 1 && sudo dmidecode -t 12 && sudo dmidecode -t 15 && sudo dmidecode -t 23 && sudo dmidecode -t 32 ;;
  "2") sudo dmidecode -t 2 && sudo dmidecode -t 10  ;;
  "3") sudo dmidecode -t 3  ;;
  "4") sudo dmidecode -t 4   ;;
  "5") sudo dmidecode -t 5 && sudo dmidecode -t 6 && sudo dmidecode -t 16 && sudo dmidecode -t 17  ;;
  "6") sudo dmidecode -t 7;;
  "7") sudo dmidecode -t 8 ;;
  "8")sudo dmidecode -t 9 ;;
  "9")sudo dmidecode -t 0 && sudo dmidecode -t 13 ;;
  *) echo "Nic nie wybrałeś"
esac