# Keycloak SAML provider demo

Keycloak SAML provider demo based on example in [Keycloak repository](https://github.com/keycloak/keycloak/tree/master/examples/broker/saml-broker-authentication) for OpenShift, automatically deployed with ansible.

Directory [web-app](https://github.com/pschiffe/keycloak-demo/tree/master/web-app) contains source for [Docker image](https://hub.docker.com/r/pschiffe/keycloak-demo-web-app/) with sample web application which is used to test authentication.

## Usage

Clone the repository, edit the inventory file and add correct host to the `[oc_client]` group. This host has to have configured `oc` client for OpenShit. You can also use command `oc cluster up` on `localhost` to start OpenShift locally. Variable `public_hosted_zone` needs to be configured to the OpenShift public hosted zone. The `xip.io` domain is used when running the OpenShift with `oc cluster up`. Everything deployed with this playbook will be in the `keycloak-poc` (configurable) project in OpenShift.

```
git clone https://github.com/pschiffe/keycloak-demo.git
cd keycloak-demo
# Edit inventory file
ansible-playbook -e 'public_hosted_zone=192.168.1.7.xip.io' ./saml-broker/saml-broker.yml
```

Once the Keycloak is deployed, there will be 2 realms, `saml-broker-realm` containing the user (with login `user/password`) and providing a SAML v2 Identity Provider and the `saml-broker-authentication-realm` which contains local admin user (with login `admin/password`) and is used for SAML brokering.

## Issues to fix

Currently it's not possible to do this without modifying the `sso70-https.json` template provided by OpenShift https://github.com/jboss-openshift/application-templates/issues/220

RFE to not import users to the keycloak local database when brokering can be found here https://issues.jboss.org/browse/KEYCLOAK-4429
