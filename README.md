# Run bulk_extractor on select file formats
This Bash script allows you to exclude some file formats (or files containing a particular string) from a bulk_extractor scan.

## Instructions

1. Make a copy of the script:
cp $HOME/born_digital/tools/bulk_extractor_select.sh $HOME/born_digital/daev_XXXX_XXXX/reports/bulk_extractor_select.sh

2. Open the copied script in a text editor:
open $HOME/born_digital/daev_XXXX_XXXX/reports/bulk_extractor_select.sh

3. Edit the paths in line 3 and line 5. Also make sure the file formats bulk_extractor should skip are listed in the bulk_extractor command.

4. Run the script:
docker-compose -f $HOME/bdap/docker-compose.yml exec bdap bash -c "Users/borndigital/born_digital/daev_XXXX_XXXX/reports/bulk_extractor_select.sh"

5. Make sure there are reports in the b_e directory, then open report.xml.

6. Confirm bulk_extractor ran on all files. You can do this by doing a search for <provided_filename>. The number of occurrences should match the number reported by this command:
find /Users/borndigital/born_digital/daev_XXXX_XXXX/logical -type f ! \( -iname "*.mp4" -o -iname "*.mov" -iname "*.avi" -iname "*.wmv" -iname "*.webm" -iname "*.flv" \)

