## Generate a server list
```
(for (i <- 1 to 20) yield "phelstbmcd" + (i.toString.reverse.padTo(4, "0").reverse.mkString) + ":11211").mkString(",")
```

## Setup scalas
```bash
vi scalas
```

```bash
#!/bin/sh
sbt -Dsbt.main.class=sbt.ScriptMain -sbt-create \
    -Dsbt.boot.directory=$HOME/.sbt/boot \
    "$@"
```

```bash
chmod a+x scalas
```

In the script put:
```scala
#!/usr/bin/env scalas
/***
scalaVersion := "2.11.0"

libraryDependencies ++= Seq(
    "org.joda"            %   "joda-convert"      % "1.5",
    "joda-time"           %   "joda-time"         % "2.3"
)
*/

import org.joda.time._

println("date time from script using JODA time:" + DateTime.now())
```
