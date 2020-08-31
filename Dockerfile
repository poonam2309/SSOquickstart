FROM registry.redhat.io/jboss-eap-7/eap72-openshift:latest
COPY target/*.war /opt/eap/standalone/deployments/
COPY eap_folder/standalone.xml /opt/eap/standalone/configuration/standalone-openshift.xml 
COPY eap_folder/add-ons /opt/eap/modules/system/
