# Read in the file

method = "virtual"
#method = "virtual"
with open(f'template_{method}.txt', 'r') as file :
  template = file.read() # to str

# Replace the target string

VPD = ['direct', 'conver', 'only_celsius']
NDist = [1, 2, 3, 6]


for index, s in enumerate(VPD):
    index = str(index+1)
    for r in NDist:
        
        r = str(r) # to string 
        instance = template
        instance = instance.replace('{VPD}', s)
        instance = instance.replace('{NDist}', r)
        instance = instance.replace('{Index}', index)
        file_name = f'{method}VPD_{s}_NDist{r}.json'
        with open(file_name, 'wt') as fout :
            fout.write(instance)
  







