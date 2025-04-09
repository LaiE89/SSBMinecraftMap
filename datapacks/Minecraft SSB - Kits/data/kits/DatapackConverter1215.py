import os
import re
import sys

def process_file(filepath):
    # Read file contents
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Replace custom_name: remove single quotes around its JSON
    new_content = re.sub(r"custom_name='([^']*)'", r"custom_name=\1", content)

    # Replace lore items: remove single quotes around JSON arrays or objects.
    new_content = re.sub(r"'(\'s*[\[{].*?[\]}]\'s*)'", r"\1", new_content, flags=re.DOTALL)

    # If changes were made, write the file back.
    if new_content != content:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f"Updated: {filepath}")

def process_folder(folder_path):
    # Walk through every file in the folder recursively.
    for root, dirs, files in os.walk(folder_path):
        for filename in files:
            filepath = os.path.join(root, filename)
            process_file(filepath)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python process_files.py /path/to/folder")
        sys.exit(1)
    
    folder = sys.argv[1]
    if not os.path.isdir(folder):
        print(f"Error: {folder} is not a valid directory")
        sys.exit(1)

    process_folder(folder)
