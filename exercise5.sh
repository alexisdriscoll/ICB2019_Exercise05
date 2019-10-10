cat wages.csv | sed 1d | cut -d , -f 1,2 | tr ',' ' ' | sort -k1,1 -k2n  > exercise5.txt
echo "Highest earner (gender yearsExperience wage): "
cat wages.csv | sed 1d | cut -d , -f 1,2,4 | tr ',' ' ' | sort -k3n | tail -n 1
echo "Lowest earner (gender yearsExperience wage): "
cat wages.csv | sed 1d | cut -d , -f 1,2,4 | tr ',' ' ' | sort -k3n | head -n 1
echo "Number of females in the top 10 earners: "
cat wages.csv | sed 1d | cut -d , -f 1,2,4 | tr ',' ' ' | sort -k3n | tail -n 10 | grep female | wc -l


