﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment1.App_Code
{
    public class BasePage: System.Web.UI.Page
    {
        public BasePage()
        {
            this.PreInit += Page_PreInit;
        }

        private void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
            if (preferredTheme != null)
            {
                string folder = Server.MapPath("~/App_Themes/" + preferredTheme.Value);
                if (System.IO.Directory.Exists(folder))
                {
                    Page.Theme = preferredTheme.Value;
                }
            }
        }
    }
}