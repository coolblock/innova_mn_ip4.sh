#!/bin/bash
echo "starting transform"
find ./ -execdir rename 's/innova/innova/'g '{}' \+
find ./ -execdir rename 's/Innova/Innova/' '{}' \+
find ./ -execdir rename 's/INNOVA/INNOVA/' '{}' \+
find ./ -type f -exec sed -i 's/innova/innova/g' '{}' \;
find ./ -type f -exec sed -i 's/Innova/Innova/g' '{}' \;
find ./ -type f -exec sed -i 's/INNOVA/INNOVA/g' '{}' \;
echo "completed transform"
