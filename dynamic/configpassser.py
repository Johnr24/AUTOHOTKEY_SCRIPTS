def read_variables(file_path):
    variables = {}
    with open(file_path, 'r') as file:
        for line in file:
            if ':=' in line:
                key, value = line.split(':=')
                variables[key.strip()] = value.strip()
    return variables

# Usage
file_path = 'c:/AUTOHOTKEY_SCRIPTS/Main Navigation/middletoolsconfig.ahk'
mtc = read_variables(file_path)
print(mtc['pagebar'])