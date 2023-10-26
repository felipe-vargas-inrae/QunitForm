#! /usr/bin/env bash



for filename in conf/local/*.json; do
     echo "$filename"
     java -Xms10g -Xmx10g -XX:+UseParallelGC -jar ../QunitForm-1.0.jar --config "$filename"  --unzip || true
done


