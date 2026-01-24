from pathlib import Path

currentDirectory = Path.cwd()
currentFile = Path(__file__).name

print(f"Files in {currentDirectory}:")

for filepath in currentDirectory.iterdir():
    if filepath.name == currentFile:
        continue

    print(f"  - {filepath.name}")

    if filepath.is_file():
        content = filepath.read_text(encoding='utf-8')
        print(f"    Content: {content}")