#!/bin/bash
echo "starting transform"
find ./ -execdir rename 's/vivo/innova/'g '{}' \+
find ./ -execdir rename 's/Vivo/Innova/' '{}' \+
find ./ -execdir rename 's/VIVO/VIVO/' '{}' \+
find ./ -type f -exec sed -i 's/vivo/innova/g' '{}' \;
find ./ -type f -exec sed -i 's/Vivo/Innova/g' '{}' \;
find ./ -type f -exec sed -i 's/VIVO/INNOVA/g' '{}' \;
echo "completed transform"
