# Description
Container based on logcheck: https://logcheck.org/

# Usage

For testing container, you can run the following command:

```bash
docker run  -ti -v {logsdir}:/var/log/external/:Z -v {logcheckconfigfile}:/etc/logcheck/logcheck.conf -v {logchecklogfilesdir}:/etc/logcheck/logcheck.logfiles.d/ -v {esmtprcfile}:/etc/esmtprc -v {customserverrulefile}:/etc/logcheck/ignore.d.server/local-rule -v {offsetdir}:/var/lib/logcheck/ logcheck
```
- logsdir: Directory with logs to be checked, example: `/var/log/`
- logcheckconfigfile: Directory with logcheck configuration file, example:`logcheck-config-example/logcheck.conf`
- logchecklogfilesdir: Directory with config of logs files to analyze, example: `logcheck-config-example/logcheck.logfiles.d/`
- esmtprcfile: File with esmtp configuration for senging email, example: `esmtprc.example`
- customserverrulefile: Custom rule for server ignore level, example: `logcheck-config-example/ignore.d.server/local-examplerule`
- offsetdir: Persistent volume to store logs read by logcheck

podman run  -ti -v /var/log/:/var/log/external/:Z -v /home/javier/logcheck.conf:/etc/logcheck/logcheck.conf -v /home/javier/logcheck.logfiles.d/:/etc/logcheck/logcheck.logfiles.d/ -v /home/javier/.esmtprc:/etc/esmtprc -v /home/javier/offset/:/var/lib/logcheck/ logcheck

This is intended to be used in kubernetes, but today it's WIP only.
