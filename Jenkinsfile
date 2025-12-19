pipeline {
    agent any

    environment {
        PATH = "/opt/maven/bin:$PATH"
    }

    stages {

        stage("Build") {
            steps {
                echo "----- BUILD START -----"
                sh "cd webapp && mvn clean package -Dmaven.test.skip=true"
                echo "----- BUILD END -----"
            }
        }

        stage("Test") {
            steps {
                echo "----- TEST START -----"
                sh "cd webapp && mvn surefire-report:report"
                echo "----- TEST END -----"
            }
        }

        stage("SonarCloud Analysis") {
         
            steps {
                withSonarQubeEnv("sonar-server") {
                    sh "sonar-scanner"
               }
            }
        }
    }
}

