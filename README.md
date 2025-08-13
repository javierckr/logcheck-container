# Description
Container based on logcheck: https://logcheck.org/

# Usage

For testing container, you can run the following command:

```bash
docker run  -ti -v {logsdir}:/var/log/external/:Z -v {logcheckconfigdir}:/etc/logcheck/ -v {esmtprcfile}:/etc/esmtprc -v {offsetdir}:/var/lib/logcheck/ logcheck
