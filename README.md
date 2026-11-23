# DevOps Hub – UI modernization overlay

This package is a drop-in UI refresh for the existing `modasai1698/dockerwebapp` Java/Spring MVC application. It intentionally keeps the current Spring MVC controller/view contract and does not replace the Java business layer.

## Included files

Copy the contents of `src/` into the matching paths in the repository:

- `WEB-INF/views/index_home.jsp` – refreshed public landing page (`/index`)
- `WEB-INF/views/login.jsp` – refreshed login page (`/login`)
- `WEB-INF/views/registration.jsp` – refreshed registration page (`/registration`)
- `WEB-INF/views/welcome.jsp` – refreshed signed-in workspace (`/welcome`)
- `resources/css/devops-hub.css` – responsive dark/light design system
- `resources/js/devops-hub.js` – theme persistence and mobile navigation

The pages retain the existing Spring MVC view names and form field names:
- Login: `username`, `password`, and CSRF hidden field
- Registration model attribute: `userForm`; fields `username`, `userEmail`, `password`, `passwordConfirm`
- Dashboard uses `pageContext.request.userPrincipal.name`
- Existing links are preserved for `/users`, `/user/{username}`, `/user/rabbit`, and `/user/elasticsearch`

## Apply the overlay

From the repository root, unzip this package and copy its `src/` directory over the repository's `src/` directory, or copy the six included files individually while preserving the paths.

Then build using the repository's existing Maven setup:

```bash
mvn clean test package
```

The existing Dockerfile expects `target/vprofile-v2.war` and Tomcat 8. Confirm the Maven build produces that exact WAR name before building the image:

```bash
ls -lh target/*.war
docker build -f Docker-app/Dockerfile -t devops-hub:local .
```

## Important integration notes

1. This is a view-layer modernization, not a complete rewrite of the legacy Java stack. The current project uses older Spring MVC/Spring Security, JSP, and Tomcat dependencies. Plan a separate framework/runtime upgrade after validating this UI.
2. The dashboard's summary cards are presentation-only. They do not claim to be live deployment metrics or pipeline telemetry.
3. The old app uses a legacy controller mapping for `/user/elasticsearch`; verify that the mapping exists and is enabled before exposing that navigation item to non-admin users.
4. The current `application.properties` contains infrastructure hostnames and a database password. Move secrets to environment variables or a secret manager before publishing images or deploying.
5. The current registration controller logs the supplied password. Remove that logging statement before using the app outside a disposable lab.
6. The current app's Spring Security rules protect `/` and `/welcome`; verify access rules for `/users`, `/user/rabbit`, and `/user/elasticsearch` before production use.
7. Test registration, login, logout, profile editing, user listing and the integration endpoints after applying the UI files. A UI refresh does not itself add missing backend features.

## Theme

The theme toggle supports dark and light modes and stores the choice in browser local storage. It defaults to the operating system preference when no saved preference exists.
