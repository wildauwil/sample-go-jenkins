pipeline {
    agent {
        docker {
            image 'my-sample-go-jenkins'
        }
    }
    environment {
        root = "/usr/local/go/bin/go"
        branch = "master"
        scmUrl = "https://github.com/wildauwil/sample-go-jenkins.git"
    }

    stages{
        // stage("Go Version") {
        //     steps{
        //         sh "${root} version"
        //     }
        // }

        stage("Git Clone") {
            steps{
                git branch: "${branch}", url: "${scmUrl}"
            }
        }

        stage("Go Test") {
            steps{
                sh "run --name test-container my-sample-go-jenkins"
            }
        }

        // stage("Go Build") {
        //     steps{
        //         sh "${root} build ./..."
        //     }
        // }
    }
}

// pipeline {
//     agent any
//     environment {
//         root = "/usr/local/go/bin/go"
//         branch = "master"
//         scmUrl = "https://github.com/wildauwil/sample-go-jenkins.git"
//     }

//     stages{
//         stage("Go Version") {
//             steps{
//                 sh "${root} version"
//             }
//         }

//         stage("Git Clone") {
//             steps{
//                 git branch: "${branch}", url: "${scmUrl}"
//             }
//         }

//         stage("Go Test") {
//             steps{
//                 sh "${root} test ./... -cover"
//             }
//         }

//         stage("Go Build") {
//             steps{
//                 sh "${root} build ./..."
//             }
//         }
//     }
// }
