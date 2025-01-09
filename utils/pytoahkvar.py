import os

def replace_in_file(file_path):
    # Read the content of the file
    with open(file_path, 'r') as file:
        content = file.read()

    # Replace all instances of '=' with ':=' and ';' with '#'
    modified_content = content.replace('=', ':=').replace('#', ';')

    # Create the new file path with .ahk extension
    base_name = os.path.splitext(file_path)[0]
    new_file_path = base_name + '.ahk'

    # Write the modified content to the new file
    with open(new_file_path, 'w') as new_file:
        new_file.write(modified_content)

    print(f"File saved as {new_file_path}")
# Example usage
replace_in_file('C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.py')