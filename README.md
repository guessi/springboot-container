# Springboot-container

## How the code base generated?

1. Go to https://start.spring.io/

2. Generate the sample app with the following attributes

Left hand side:

* Project: `Gradle - Groovy`
* Language: `Java`
* Spring Boot: `2.7.14`
* Packaging: `Jar`
* Java: `11`
* Others, just leave it untouched.

Right hand side:

* Dependencies: `Spring Web`

3. Click `GENERATE`

4. Extract the zip file to folder `src`

5. If you would like to change SpringBoot version, edit the file `build.gradle` and replace `2.7.14` with `2.7.8` (for example)

### Folder structure

```
.
├── .gitignore
├── build.gradle
├── gradle/
│   └── wrapper/
│       ├── gradle-wrapper.jar
│       └── gradle-wrapper.properties
├── gradlew*
├── gradlew.bat
├── settings.gradle
└── src/
    ├── main/
    │   ├── java/
    │   │   └── com/
    │   │       └── example/
    │   │           └── springboot/
    │   │               └── Application.java
    │   └── resources/
    │       ├── application.properties
    │       ├── static/
    │       └── templates/
    └── test/
        └── java/
            └── com/
                └── example/
                    └── springboot/
                        └── ApplicationTests.java
```

## How to build container image?

```bash
$ ./build.sh
```

## How to run the container image?

```bash
$ docker run -it guessi/springboot-container # or guessi/springboot-container:alpine
```

## Results

### Run locally, regular build

```

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v2.7.8)

2023-08-18 16:37:55.207  INFO 83 --- [           main] com.example.springboot.Application       : Starting Application using Java 11.0.16 on 0f7370c668aa with PID 83 (/opt/workdir/app.jar started by root in /opt/workdir)
2023-08-18 16:37:55.211  INFO 83 --- [           main] com.example.springboot.Application       : No active profile set, falling back to 1 default profile: "default"
2023-08-18 16:37:56.779  INFO 83 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2023-08-18 16:37:56.801  INFO 83 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2023-08-18 16:37:56.803  INFO 83 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.71]
2023-08-18 16:37:56.949  INFO 83 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2023-08-18 16:37:56.953  INFO 83 --- [           main] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 1610 ms
2023-08-18 16:37:57.485  INFO 83 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2023-08-18 16:37:57.500  INFO 83 --- [           main] com.example.springboot.Application       : Started Application in 3.182 seconds (JVM running for 3.793)
```

### Run under Kubernetes

```
 % k logs -f springboot-6574df8454-lhhdz

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v2.7.8)

2023-08-18 16:33:43.638  INFO 1 --- [           main] com.example.springboot.Application       : Starting Application using Java 11.0.16 on springboot-6574df8454-lhhdz with PID 1 (/opt/workdir/app.jar started by root in /opt/workdir)
2023-08-18 16:33:43.643  INFO 1 --- [           main] com.example.springboot.Application       : No active profile set, falling back to 1 default profile: "default"
2023-08-18 16:33:46.010  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2023-08-18 16:33:46.027  INFO 1 --- [           main] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2023-08-18 16:33:46.028  INFO 1 --- [           main] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.71]
2023-08-18 16:33:46.194  INFO 1 --- [           main] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2023-08-18 16:33:46.194  INFO 1 --- [           main] w.s.c.ServletWebServerApplicationContext : Root WebApplicationContext: initialization completed in 2416 ms
2023-08-18 16:33:47.167  INFO 1 --- [           main] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2023-08-18 16:33:47.182  INFO 1 --- [           main] com.example.springboot.Application       : Started Application in 4.598 seconds (JVM running for 5.445)
```

## LICENSE

[UNLICENSE](LICENSE)
