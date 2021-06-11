pipeline {
    agent any
    environment
    {
        dotnet = 'C:\\"Program Files"\\dotnet\\dotnet.exe'
    }
    stages {
        stage('Build') {
            steps {
                bat 'C:\\"Program Files"\\dotnet\\dotnet.exe build --configuration Release'
            }
        }
        stage('Run') {
            steps {
                bat 'C:\\"Program Files"\\dotnet\\dotnet.exe run'
            }
        }
        stage('Clean') {
            steps {
                bat 'C:\\"Program Files"\\dotnet\\dotnet.exe clean'
            }
        }
    }
}