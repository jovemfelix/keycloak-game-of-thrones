
keycloak.got
==============

><i class="icon-file"></i>**GOALS:**
> - Provide a collection of apps that can be used to test keycloak across realms and clients;
> - Provide a collection of customized realm themes based on game of thrones;
> - Can be used to demonstrate keycloak features and single sign-on for users.

```
#keycloak #redhat #example
```

```
v1.0
```

### SCREENSHOTS

Castle Black app:

![alt text](images/login-castle-black.png "Castle Black application for use with HOUSE_STARK realm")

Winterfell app:

![alt text](images/login-winterfell.png "Winterfell application for use with HOUSE_STARK realm")

Kings Landing app:

![alt text](images/login-kings-landing.png "Kings Landing application for use with HOUSE_LANNISTER realm")

HOUSE LANNISTER realm login:

![alt text](images/house_lannister.png "HOUSE_LANNISTER realm")

HOUSE STARK realm login:

![alt text](images/house_stark.png "HOUSE_STARK realm")

### INSTALLATION

1. Install EAP 6.4 or 7.1 with keycloak-adapter on you local machine; 
2. Get your Red Hat Single Sign-On (Keycloak) running on port 8080/8443;
3. Import REALM settings using <b>lannister-realm-export.json</b> and <b>stark-realm-export.json</b> files attached in this project;
4. Deploy themes [house_lannister, house_stark] inside {KEYCLOAK_BASE_DIR}/themes/;
5. Restart keycloak server;
6. Run all 3 applications using your IDE ou install maven wildfly-plugin;
7. Inside keycloak admin console, create the following roles:
    - administrator in winterfell client (realm: HOUSE_STARK);
    - administrator in castle-black client (realm: HOUSE_STARK);
    - administrator in kings-landing client (realm: HOUSE_LANNISTER);
8. Inside keycloak admin console, create the following users:
    - sansa w/ winterfell:client role: administrator
    - jon w/ winterfell:client and castle-black:client role: administrator
    - tyrion w/ kings-landing:client role: administrator
9. Access the following URLs:
    - http://localhost:8080/app-castle-black
    - http://localhost:8080/app-winterfell
    - http://localhost:8080/app-kings-landing

#### RELEASE NOTES

#### 1.0.0
 - Initial Release