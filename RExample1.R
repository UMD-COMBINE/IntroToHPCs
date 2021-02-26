#!/usr/bin/env Rscript
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --mem=24000
#SBATCH --output=RExample1.log
#SBATCH --mail-user=jmerch@terpmail.umd.edu
#SBATCH --mail-type=ALL

x = 1:20
y = 1:20

z=0
for (i in x){
  for (j in y){
    z=z+x*y
  }
}
print(z)
