def read_config(file_path):
    config = {}
    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()
            if line and not line.startswith(';'):  # Ignore empty lines and comments
                key, value = line.split('=', 1)
                key = key.strip()
                value = value.strip()
                # Convert value to tuple if it contains coordinates
                if ',' in value:
                    value = tuple(map(int, value.split(',')))
                config[key] = value
    return config