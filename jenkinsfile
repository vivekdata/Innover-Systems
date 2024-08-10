pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/vivekdata/Innover-Systems.git'
            }
        }
        stage('Install Nginx') {
            steps {
                sh '''
                # Install Nginx
                sudo apt-get update
                sudo apt-get install -y nginx
                '''
            }
        }
        stage('Deploy index.html') {
            steps {
                sh '''
                # Copy the index.html to Nginx web directory
                sudo cp index.html /var/www/html/index.html

                # Restart Nginx to apply changes
                sudo systemctl restart nginx
                '''
            }
        }
    }
    post {
        success {
            echo 'Deployment completed successfully!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
