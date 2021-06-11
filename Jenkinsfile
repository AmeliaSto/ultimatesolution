pipeline {
    agent any
    environment
    {
        dotnet = 'C:\\"Program Files"\\dotnet\\dotnet.exe'
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