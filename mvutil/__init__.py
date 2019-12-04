import subprocess

def write_to_clipboard(output):
    output = str(output)
    print("Answer (copied to clipboard): ", output)
    process = subprocess.Popen(
        'pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(output.encode('utf-8'))


def try_int(s):
    try:
        return int(s)
    except Exception as _:
        return s
