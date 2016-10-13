#!/usr/bin/env cat

alias jdk7='open_jdk7_env'
alias jdk8='open_jdk8_env'

function open_jdk7_env {
    sudo update-alternatives --set java /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java
    sudo update-alternatives --set javac /usr/lib/jvm/java-7-openjdk-amd64/bin/javac
}

function open_jdk8_env {
    sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
    sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
}


