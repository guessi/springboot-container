# Due to legacy issue, need to use legacy openjdk image repo
# - https://gallery.ecr.aws/docker/library/openjdk
#
# Deprecation notice could be found at https://github.com/docker-library/openjdk/issues/505

FROM public.ecr.aws/docker/library/openjdk:11-slim as build
COPY ./src /opt/workdir
WORKDIR /opt/workdir
RUN ./gradlew build

FROM public.ecr.aws/docker/library/openjdk:11-slim
COPY --from=build /opt/workdir/build/libs/spring-boot-0.0.1-SNAPSHOT.jar /opt/workdir/app.jar
WORKDIR /opt/workdir
CMD ["java", "-jar", "./app.jar"]

EXPOSE 8080
