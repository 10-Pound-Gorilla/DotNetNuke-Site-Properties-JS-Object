<%
	UserInfo user = UserController.GetUserById(PortalSettings.ActiveTab.PortalID, UserController.GetCurrentUserInfo().UserID);
%>
<script type="text/javascript">
	var dnnVars = {
		editMode: <% =DotNetNuke.Common.Globals.IsEditMode().ToString().ToLower() %>,
		page : {
			id : <% =PortalSettings.ActiveTab.TabID %>,
			name : "<% =PortalSettings.ActiveTab.TabName %>",
			title : "<% =PortalSettings.ActiveTab.Title %>",
			description : "<% =PortalSettings.ActiveTab.Description %>",
			keywords : "<% =PortalSettings.ActiveTab.KeyWords %>",
			icon : "<% =PortalSettings.ActiveTab.IconFile %>",
			order : <% =PortalSettings.ActiveTab.TabOrder %>,
			path : "<% =PortalSettings.ActiveTab.TabPath %>",
			type : "<% =PortalSettings.ActiveTab.TabType %>",
			level : <% =PortalSettings.ActiveTab.Level %>,
			fullUrl : "<% =PortalSettings.ActiveTab.FullUrl %>",
			skinPath : "<% =PortalSettings.ActiveTab.SkinPath %>",
			skinFullPath : "<% =PortalSettings.ActiveTab.SkinSrc %>",
			containerPath : "<% =PortalSettings.ActiveTab.ContainerPath %>",
			containerFullPath : "<% =PortalSettings.ActiveTab.ContainerSrc %>",
			startDate : new Date("<% =PortalSettings.ActiveTab.StartDate %>"),
			endDate	: new Date("<% =PortalSettings.ActiveTab.EndDate %>"),
			authorizedRoles : ("<% =PortalSettings.ActiveTab.AuthorizedRoles %>").split(";")
			<% if (PortalSettings.ActiveTab.Level > 0)  { %>
			,
			rootParent : {
				id : <% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().TabID %>,
				name : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().TabName %>",
				title : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().Title %>",
				description : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().Description %>",
				keywords : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().KeyWords %>",
				icon : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().IconFile %>",
				order : <% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().TabOrder %>,
				path : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().TabPath %>",
				type : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().TabType %>",
				level : <% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().Level %>,
				fullUrl : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().FullUrl %>",
				skinPath : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().SkinPath %>",
				skinFullPath : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().SkinSrc %>",
				containerPath : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().ContainerPath %>",
				containerFullPath : "<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().ContainerSrc %>",
				startDate : new Date("<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().StartDate %>"),
				endDate	: new Date("<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().EndDate %>"),
				authorizedRoles : ("<% =PortalSettings.ActiveTab.BreadCrumbs.Cast<DotNetNuke.Entities.Tabs.TabInfo>().First().AuthorizedRoles %>").split(";")
			}
			<% } %>
		},
		portal : {
			id : <% =PortalSettings.ActiveTab.PortalID %>,
			siteIdNum : <% =PortalSettings.PortalId %>,
			siteId : <% =PortalSettings.PortalAlias.PortalID %>,
			description : "<% =PortalSettings.Description %>",
			name : "<% =PortalSettings.PortalName %>",
			keywords : "<% =PortalSettings.KeyWords %>",
			domainName : "<% =PortalSettings.PortalAlias.HTTPAlias %>",
			admin : {
				adminId : <% =PortalSettings.AdministratorId %>,
				adminEmail : "<% =PortalSettings.Email %>",
				adminRoleId : <% =PortalSettings.AdministratorRoleId %>,
				adminRoleName : "<% =PortalSettings.AdministratorRoleName %>",
				adminRoles : ("<% =PortalSettings.ActiveTab.AdministratorRoles %>").split(";")
			},
			registeredRoleId : <% =PortalSettings.RegisteredRoleId %>,
			registeredRoleName : "<% =PortalSettings.RegisteredRoleName %>",
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
			},
			logoFile : "<% =PortalSettings.LogoFile %>",
			dnnVersion : "<% =PortalSettings.Version %>",
			currency : "<% =PortalSettings.Currency %>",
			timeZoneOffset : "<% =PortalSettings.TimeZoneOffset %>",
			defaultLanguage : "<% =PortalSettings.DefaultLanguage %>",
			footerText : "<% =PortalSettings.FooterText %>",
			hostingFee : "<% =PortalSettings.HostFee %>",
			hostingSpace : "<% =PortalSettings.HostSpace %>"
		},
		user : {
			id : <% =UserController.GetCurrentUserInfo().UserID %>,
			<% if (Request.IsAuthenticated)  { %>
			username : "<% =UserController.GetCurrentUserInfo().Username %>",
			name : "<% =UserController.GetCurrentUserInfo().DisplayName %>",
			email : "<% =UserController.GetCurrentUserInfo().Email %>",
			firstName : "<% =UserController.GetCurrentUserInfo().FirstName %>",
			lastName : "<% =UserController.GetCurrentUserInfo().LastName %>",
			roles : ("<% =String.Join(",",user.Roles) %>").split(","),
			creationDate : new Date("<% =UserController.GetCurrentUserInfo().CreatedOnDate %>"),
			<% } %>
			loggedIn : <% =Request.IsAuthenticated.ToString().ToLower() %>,
			admin : <% =UserController.GetCurrentUserInfo().IsInRole("Administrators").ToString().ToLower() %>
		}
	};
</script>