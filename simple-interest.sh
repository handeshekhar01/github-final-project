   #!/bin/bash
   echo "Enter principal amount:"
   read principal
   echo "Enter rate of interest (%):"
   read rate
   echo "Enter time period (years):"
   read time
   si=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
   echo "Simple Interest = $si"
