<!doctype html>
<!--
  ~ Copyright 2016 Red Hat, Inc. and/or its affiliates
  ~ and other contributors as indicated by the @author tags.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  -->

<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SAML Broker Authentication Example</title>

    <script src="js/lib/angular/angular.js"></script>
    <script src="js/lib/angular/angular-resource.js"></script>
    <script src="js/lib/angular/angular-route.js"></script>
    <script src="js/lib/angular/ui-bootstrap-tpls-0.4.0.js"></script>

    <script src="js/app.js" type="text/javascript"></script>

    <script src="${KEYCLOAK_SERVER}/auth/js/keycloak.js"></script>
</head>

<body data-ng-controller="GlobalCtrl">

<div id="content-area" class="col-md-9" role="main">
    <div id="content">
        <h2>Hello, {{identity.name}} [<a href="" ng-click="logout()">Sign Out</a>]</h2>
        <div>
            <p><b>This is your Keycloak Profile</b>:</p>
            <p>
                <ul>
                    <li><b>Id</b>: {{identity.sub}}</li>
                    <li><b>Username</b>: {{identity.preferred_username}}</li>
                    <li><b>Email</b>: {{identity.email}}</li>
                    <li><b>Full Name</b>: {{identity.name}}</li>
                </ul>
            </p>
        </div>
    </div>
</div>
</body>
</html>