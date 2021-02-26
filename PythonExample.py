#!/usr/bin/env python
#!/bin/bash
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --mem=24000
#SBATCH --output=PythonExample.log
#SBATCH --mail-user=jmerch@terpmail.umd.edu
#SBATCH --mail-type=ALL

# creating a simple data - set 
sample = [1, 2, 3, 4, 5] 
print('range of sample is: ',max(sample)-min(sample))

