<script type="text/javascript">
	var dnnVars = {
		editMode: <% =DotNetNuke.Common.Globals.IsEditMode().ToString().ToLower() %>,
		page : {
			id : <% =PortalSettings.ActiveTab.TabID %>,
			name : "<% =PortalSettings.ActiveTab.TabName %>",
			title : "<% =PortalSettings.ActiveTab.Title %>",
			description : "<% =PortalSettings.ActiveTab.Description %>",
			keywords : "<% =PortalSettings.ActiveTab.KeyWords %>",
			order : <% =PortalSettings.ActiveTab.TabOrder %>,
			path : "<% =PortalSettings.ActiveTab.TabPath %>",
			type : "<% =PortalSettings.ActiveTab.TabType %>",
			level : <% =PortalSettings.ActiveTab.Level %>,
			fullUrl : "<% =PortalSettings.ActiveTab.FullUrl %>",
		},
		portal : {
			id : <% =PortalSettings.ActiveTab.PortalID %>,
			siteIdNum : <% =PortalSettings.PortalId %>,
			siteId : <% =PortalSettings.PortalAlias.PortalID %>,
			description : "<% =PortalSettings.Description %>",
			name : "<% =PortalSettings.PortalName %>",
			keywords : "<% =PortalSettings.KeyWords %>",
			domainName : "<% =PortalSettings.PortalAlias.HTTPAlias %>",
			adminEmail : "<% =PortalSettings.Email %>",
			homeFolder : "<% =PortalSettings.HomeDirectory %>",
			pages : {
				splash :{
					id : <% =PortalSettings.SplashTabId %>,
					url : "<% =DotNetNuke.Common.Globals.NavigateURL(PortalSettings.SplashTabId) %>"
				},
				home : {
					id : <% =PortalSettings.HomeTabId %>,
					url : "<% = DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId) %>"
				},
				login : {
					id : <% =PortalSettings.LoginTabId %>,
					url : "<% =DotNetNuke.Common.Globals.NavigateURL(PortalSettings.LoginTabId) %>"
				},
				register : {
					id : <% =PortalSettings.RegisterTabId %>,
					url : "<% =DotNetNuke.Common.Globals.NavigateURL(PortalSettings.RegisterTabId) %>"
				},
				searchResults : {
					id : <% =PortalSettings.SearchTabId %>,
					url : "<% =DotNetNuke.Common.Globals.NavigateURL(PortalSettings.SearchTabId) %>"
				},
				userProfile : {
					id : <% =PortalSettings.UserTabId %>,
					url : "<% =DotNetNuke.Common.Globals.NavigateURL(PortalSettings.UserTabId) %>"
				},
				admin : {
					id : <% =PortalSettings.AdminTabId %>,
					url : "<% =DotNetNuke.Common.Globals.NavigateURL(PortalSettings.AdminTabId) %>"
				},
				host : {
					id : <% =PortalSettings.SuperTabId %>,
					url : "<% =DotNetNuke.Common.Globals.NavigateURL(PortalSettings.SuperTabId) %>"
				}
			}
		},
		user : {
			id : <% =UserController.GetCurrentUserInfo().UserID %>,
			<% if (Request.IsAuthenticated) { %>
			name : "<% =UserController.GetCurrentUserInfo().DisplayName %>",
			email : "<% =UserController.GetCurrentUserInfo().Email %>",
			firstName : "<% =UserController.GetCurrentUserInfo().FirstName %>",
			lastName : "<% =UserController.GetCurrentUserInfo().LastName %>",
			roles : <% = serializer.Serialize(user.Roles) %>,
			<% } %>
			loggedIn : <% =Request.IsAuthenticated.ToString().ToLower() %>,
			admin : <% =UserController.GetCurrentUserInfo().IsInRole("Administrators").ToString().ToLower() %>
		}
	};
</script>