# Dump memory for analysis
> jps
Find java process id for the gaia server

Then
> jmap -dump:file=/tmp/memory.jmap <java process id>
