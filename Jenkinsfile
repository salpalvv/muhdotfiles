#!groovy

// Jenkinsfile

// TODO: can we setup logic?
// If change to provisioning, run provision test.
// Promote the docker container on success
// If no change to provisioning
// just spin up provisioned tomcat container for deployment testing
node('iac'){

	def err = null
	currentBuild.result = "SUCCESS"

	try {
	timeout(60){
		stage 'checkout'
			checkout scm
		stage 'bootstrap'
			echo 'docker run the centos 6 box'
		stage 'make dotfiles'
			echo 'make dotfiles'
		stage 'test dotfiles'
			echo 'test dotfiles'
			echo 'serverspec for dotfiles lul'
		stage 'cleanup'
			echo 'just shut off the docker containers'

			def sub = env.JOB_NAME+' - Build '+env.BUILD_NUMBER+' - PASSED'
			emailext body: "${env.JOB_NAME} Test passed", subject: sub, to: 'dcollette@navicure.com'
	}
	}
	catch (error){
		err = error
		currentBuild.result = "FAILURE"

		def sub = env.JOB_NAME+' - Build '+env.BUILD_NUMBER+' - FAILED'
		emailext body: "${env.JOB_NAME} Test failed with ${err}", subject: sub, to: 'dcollette@navicure.com'
	}

	finally {
		if (err){
			throw err
		}
	}

}