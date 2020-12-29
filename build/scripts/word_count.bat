@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  word_count startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and WORD_COUNT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dlog4j.configurationFile=log4j2.properties"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\word_count-1.0-SNAPSHOT.jar;%APP_HOME%\lib\flink-streaming-java_2.12-1.12.0.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.12.1.jar;%APP_HOME%\lib\log4j-core-2.12.1.jar;%APP_HOME%\lib\log4j-api-2.12.1.jar;%APP_HOME%\lib\slf4j-log4j12-1.7.15.jar;%APP_HOME%\lib\flink-file-sink-common-1.12.0.jar;%APP_HOME%\lib\flink-runtime_2.12-1.12.0.jar;%APP_HOME%\lib\flink-java-1.12.0.jar;%APP_HOME%\lib\flink-hadoop-fs-1.12.0.jar;%APP_HOME%\lib\flink-core-1.12.0.jar;%APP_HOME%\lib\flink-queryable-state-client-java-1.12.0.jar;%APP_HOME%\lib\flink-shaded-guava-18.0-12.0.jar;%APP_HOME%\lib\commons-math3-3.5.jar;%APP_HOME%\lib\flink-annotations-1.12.0.jar;%APP_HOME%\lib\akka-slf4j_2.12-2.5.21.jar;%APP_HOME%\lib\grizzled-slf4j_2.12-1.3.2.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\flink-metrics-core-1.12.0.jar;%APP_HOME%\lib\force-shading-1.12.0.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\flink-shaded-asm-7-7.1-12.0.jar;%APP_HOME%\lib\commons-lang3-3.3.2.jar;%APP_HOME%\lib\kryo-2.24.0.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\commons-compress-1.20.jar;%APP_HOME%\lib\commons-io-2.7.jar;%APP_HOME%\lib\flink-shaded-netty-4.1.49.Final-12.0.jar;%APP_HOME%\lib\flink-shaded-jackson-2.10.1-12.0.jar;%APP_HOME%\lib\flink-shaded-zookeeper-3-3.4.14-12.0.jar;%APP_HOME%\lib\commons-cli-1.3.1.jar;%APP_HOME%\lib\javassist-3.24.0-GA.jar;%APP_HOME%\lib\scala-library-2.12.7.jar;%APP_HOME%\lib\akka-stream_2.12-2.5.21.jar;%APP_HOME%\lib\akka-actor_2.12-2.5.21.jar;%APP_HOME%\lib\akka-protobuf_2.12-2.5.21.jar;%APP_HOME%\lib\scopt_2.12-3.5.0.jar;%APP_HOME%\lib\snappy-java-1.1.4.jar;%APP_HOME%\lib\chill_2.12-0.7.6.jar;%APP_HOME%\lib\lz4-java-1.6.0.jar;%APP_HOME%\lib\minlog-1.2.jar;%APP_HOME%\lib\objenesis-2.1.jar;%APP_HOME%\lib\config-1.3.3.jar;%APP_HOME%\lib\scala-java8-compat_2.12-0.8.0.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\ssl-config-core_2.12-0.3.7.jar;%APP_HOME%\lib\chill-java-0.7.6.jar;%APP_HOME%\lib\scala-parser-combinators_2.12-1.1.1.jar

@rem Execute word_count
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %WORD_COUNT_OPTS%  -classpath "%CLASSPATH%" ru.bmstu.SocketWindowWordCount %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable WORD_COUNT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%WORD_COUNT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
