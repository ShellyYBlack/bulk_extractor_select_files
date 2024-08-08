# Run bulk_extractor on select file formats
This Bash script allows you to exclude some file formats (or files containing a particular string) from a bulk_extractor scan.

## Instructions

1. Download the script from this repo.
2. Open the script in a text editor.
3. Edit the paths in line 3 and line 5. Also make sure the file formats bulk_extractor should skip are listed in the bulk_extractor command.
4. Make sure the script has execute permissions.
5. Run the script.
6. Make sure there are reports in the b_e directory.
7. Confirm bulk_extractor ran on all files by opening report.xml and searching for the <provided_filename> tag. The number of occurrences should match the number reported by this command:
find /Users/borndigital/born_digital/daev_XXXX_XXXX/logical -type f ! \( -iname "*.mp4" -o -iname "*.mov" -iname "*.avi" -iname "*.wmv" -iname "*.webm" -iname "*.flv" \)
