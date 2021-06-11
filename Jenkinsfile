pipeline {
    agent any
    environment
    {
        dotnet = 'C:\\ProgramFiles\\dotnet\\dotnet.exe'
    }
    stages {
        stage('Build') {
            steps {
                bat 'dotnet build --configuration Release'
            }
        }
        stage('Run') {
            steps {
                bat 'dotnet run'
            }
        }
        stage('Clean') {
            steps {
                bat 'dotnet clean'
            }
        }
    }
}