#! /usr/bin/env bash
#SBATCH --output=/lustre/%u/logs/first-job-%j.out     # Output file
#SBATCH --error=/lustre/%u/logs/first-job-%j.err      # Error file

#SBATCH --mem=35000
#SBATCH --cpus-per-task=6


#SBATCH -A mistea    # GROUP
#SBATCH -p mistea     # PARTITION

module load JDK/11.0.15



for filename in conf_server/*.json; do
     echo "$filename"
     java -Xms30g -Xmx30g -XX:+UseParallelGC -jar ../QunitForm-1.0.jar --config "$filename"  --unzip || true
done


