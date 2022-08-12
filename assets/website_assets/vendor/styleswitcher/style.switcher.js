var styleSwitcher = {
    initialized: !1,
    defaults: {
        saveToStorage: !0,
        preserveCookies: !1,
        colorPrimary: "#0088CC",
        colorSecondary: "#e36159",
        colorTertiary: "#2BAAB1",
        colorQuaternary: "#383f48",
        borderRadius: "4px",
        layoutStyle: "wide",
        websiteType: "normal",
        backgroundColor: "light",
        backgroundPattern: "",
        changeLogo: !0,
        showSwitcher: !1
    },
    initialize: function() {
        var e, a = this,
            t = $("html").data("style-switcher-options"),
            s = $("#styleSwitcherScript").data("base-path") ? $("#styleSwitcherScript").data("base-path") : "",
            o = $("head"),
            i = $("#styleSwitcherScript").data("skin-src") ? $("#styleSwitcherScript").data("skin-src") : s + "master/less/skin-default.less";
        a.basePath = s,
            this.initialized || (a.options = $.extend({}, a.defaults),
                String.prototype.capitalize = function() {
                    return this.charAt(0).toUpperCase() + this.slice(1)
                },
                jQuery.styleSwitcherCachedScript = function(e, o) {
                    return o = $.extend(o || {}, {
                            dataType: "script",
                            cache: !0,
                            url: e
                        }),
                        jQuery.ajax(o)
                },
                null != $.cookie("borderRadius") && (a.options.borderRadius = $.cookie("borderRadius")),
                null != $.cookie("colorPrimary") && (a.options.colorPrimary = "#" + $.cookie("colorPrimary")),
                null != $.cookie("colorSecondary") && (a.options.colorSecondary = "#" + $.cookie("colorSecondary")),
                null != $.cookie("colorTertiary") && (a.options.colorTertiary = "#" + $.cookie("colorTertiary")),
                null != $.cookie("colorQuaternary") && (a.options.colorQuaternary = "#" + $.cookie("colorQuaternary")),
                t && (t = t.replace(/'/g, '"'),
                    a.options = $.extend({}, a.options, JSON.parse(t)),
                    a.options.preserveCookies = !0,
                    a.options.saveToStorage = !1),
                o.append($('<link rel="stylesheet">').attr("href", s + "master/style-switcher/style-switcher.css")),
                $("[data-icon]").get(0) && $(window).on("theme.plugin.icon.svg.ready", function() {
                    setTimeout(function() {
                        $.event.trigger({
                            type: "styleSwitcher.modifyVars",
                            options: a.options
                        })
                    }, 10)
                }),
                null != $.cookie("showSwitcher") || a.options.showSwitcher || !$.cookie("initialized") ? (o.append($('<link rel="stylesheet/less">').attr("href", i)),
                    e = [],
                    $('link[rel="stylesheet"]').each(function() {
                        e.push($(this).attr("href").split("/").pop())
                    }),
                    e.includes("bootstrap-colorpicker.css") || o.append($('<link rel="stylesheet">').attr("href", s + "master/style-switcher/bootstrap-colorpicker/css/bootstrap-colorpicker.css")),
                    $.styleSwitcherCachedScript(s + "master/style-switcher/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js").done(function(e, o) {
                        less = {
                                async: !0,
                                env: "production",
                                modifyVars: {
                                    "@border-radius": a.options.borderRadius,
                                    "@color-primary": a.options.colorPrimary,
                                    "@color-secondary": a.options.colorSecondary,
                                    "@color-tertiary": a.options.colorTertiary,
                                    "@color-quaternary": a.options.colorQuaternary
                                }
                            },
                            $.styleSwitcherCachedScript(s + "master/less/less.js").done(function(e, o) {
                                $.ajax({
                                    url: s + "master/style-switcher/style.switcher.html"
                                }).done(function(e) {
                                    $("body").append(e),
                                        a.container = $("#styleSwitcher"),
                                        a.build(),
                                        a.events(),
                                        "img/logo-default-slim.png" != $("#header .header-logo img:not(.header-logo-sticky):not(.logo-small)").attr("src") && (a.options.changeLogo = !1),
                                        t || (null != $.cookie("fontFamily") && (a.options.fontFamily = $.cookie("fontFamily")),
                                            null != $.cookie("layoutStyle") && (a.options.layoutStyle = $.cookie("layoutStyle")),
                                            $("body").hasClass("one-page") && (a.options.websiteType = "one-page"),
                                            null != $.cookie("backgroundColor") && (a.options.backgroundColor = $.cookie("backgroundColor")),
                                            null != $.cookie("backgroundPattern") && (a.options.backgroundPattern = $.cookie("backgroundPattern")),
                                            null != $.cookie("preLoader") && (a.options.preLoader = $.cookie("preLoader"))),
                                        a.setLayoutStyle(a.options.layoutStyle),
                                        a.setWebsiteType(a.options.websiteType),
                                        a.setBackgroundColor(a.options.backgroundColor),
                                        a.setBackgroundPattern(a.options.backgroundPattern),
                                        a.setFontFamily(a.options.fontFamily, !0),
                                        a.setColors(),
                                        a.setBorderRadius(a.options.borderRadius),
                                        a.setPreLoader(a.options.preLoader),
                                        $("#styleSwitcherSimple").remove(),
                                        a.initialized = !0,
                                        null == $.cookie("initialized") && $.cookie("initialized", !0),
                                        $(window).trigger("style.switcher.html.loaded")
                                })
                            })
                    }),
                    $.styleSwitcherCachedScript(s + "master/style-switcher/cssbeautify/cssbeautify.js").done(function(e, o) {}),
                    $("body").data("loadingOverlay") || $("body").loadingOverlay({
                        effect: "pulse",
                        isDynamicHideShow: !0
                    }, !0),
                    $("link#googleFonts").length && ((o = document.createElement("link")).rel = "stylesheet",
                        o.href = "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7CMontserrat:300,400,500,600,700,800%7COpen+Sans:300,400,500,600,700,800%7CJost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap",
                        document.head.appendChild(o))) : a.initializeSimpleMode())
    },
    initializeSimpleMode: function() {
        var o = this,
            a = $("#header .header-logo img:not(.header-logo-sticky):not(.logo-small)"),
            t = $("#header .header-logo img:not(.header-logo-sticky):not(.logo-small)").attr("src");
        $("body").append('<div id="styleSwitcherSimple" class="style-switcher style-switcher-simple d-none d-sm-block"><a id="styleSwitcherSimpleOpen" class="style-switcher-open" href="#"><i class="fas fa-cogs"></i></a></div>'),
            "img/logo-default-slim.png" == t && o.setLogo(),
            $("#styleSwitcherSimpleOpen").on("click", function(e) {
                e.preventDefault(),
                    a.attr("src", t),
                    $(this).find(".fa").removeClass().addClass("fas fa-cog fa-spin fa-fw"),
                    $.cookie("showSwitcher", !0),
                    o.initialized = !1,
                    o.initialize()
            })
    },
    build: function() {
        var o = this,
            a = o.container.find(".color-primary input"),
            t = o.container.find(".color-secondary input"),
            s = o.container.find(".color-tertiary input"),
            i = o.container.find(".color-quaternary input");
        a.val(o.options.colorPrimary).parent().colorpicker({
                autoInputFallback: !1,
                popover: !1,
                inline: !0,
                container: ".colorpicker-wrapper"
            }).wrap('<div class="colorpicker-wrapper">'),
            t.val(o.options.colorSecondary).parent().colorpicker({
                autoInputFallback: !1,
                popover: !1,
                inline: !0,
                container: ".colorpicker-wrapper"
            }).wrap('<div class="colorpicker-wrapper">'),
            s.val(o.options.colorTertiary).parent().colorpicker({
                autoInputFallback: !1,
                popover: !1,
                inline: !0,
                container: ".colorpicker-wrapper"
            }).wrap('<div class="colorpicker-wrapper">'),
            i.val(o.options.colorQuaternary).parent().colorpicker({
                autoInputFallback: !1,
                popover: !1,
                inline: !0,
                container: ".colorpicker-wrapper"
            }).wrap('<div class="colorpicker-wrapper">'),
            $(".colorpicker").on("mousedown", function(e) {
                e.preventDefault(),
                    o.isChanging = !0
            }).on("mouseup", function(e) {
                e.preventDefault(),
                    o.isChanging = !1,
                    o.options.colorPrimary = a.val(),
                    o.options.colorSecondary = t.val(),
                    o.options.colorTertiary = s.val(),
                    o.options.colorQuaternary = i.val(),
                    o.setColors()
            }),
            $(".colorpicker-element input").on("blur", function(e) {
                o.options.colorPrimary = a.val(),
                    o.options.colorSecondary = t.val(),
                    o.options.colorTertiary = s.val(),
                    o.options.colorQuaternary = i.val(),
                    o.setColors()
            }),
            this.container.find(".main-font-family-select").on("change", function(e) {
                o.setFontFamily($(this).val())
            }),
            this.container.find(".options-links.borders a").on("click", function(e) {
                e.preventDefault(),
                    o.setBorderRadius($(this).attr("data-border-radius"))
            }),
            this.container.find(".options-links.layout a").on("click", function(e) {
                e.preventDefault(),
                    o.setLayoutStyle($(this).attr("data-layout-type"), !1)
            }),
            this.container.find(".options-links.website-type a").on("click", function(e) {
                e.preventDefault(),
                    $.cookie("showSwitcher", !0),
                    self.location = $(this).attr("href")
            }),
            this.container.find(".options-links.background-color a").on("click", function(e) {
                e.preventDefault(),
                    o.setBackgroundColor($(this).attr("data-background-color"))
            }),
            this.container.find("ul[data-type=patterns]").find("a").on("click", function(e) {
                e.preventDefault(),
                    o.setBackgroundPattern($(this).attr("data-pattern"))
            }),
            this.container.find(".loading-overlay-select").on("change", function(e) {
                o.setPreLoader($(this).val())
            }),
            o.container.find(".reset").on("click", function(e) {
                e.preventDefault(),
                    o.reset()
            }),
            o.container.find(".get-css").on("click", function(e) {
                e.preventDefault(),
                    o.getCss()
            })
    },
    events: function() {
        var o = this;
        $("#styleSwitcherOpen").on("click", function(e) {
                e.preventDefault(),
                    o.container.toggleClass("active"),
                    $(".style-switcher-open-loader").removeClass("style-switcher-open-loader-loading")
            }),
            null == $.cookie("showSwitcher") && !$("body").hasClass("one-page") || $(".style-switcher").hasClass("active") || ($("#styleSwitcherOpen").trigger("click"),
                $.removeCookie("showSwitcher")),
            $("#getCSSModal").on("shown.bs.modal", function() {
                $("#getCSSModal .accordion > .card:nth-child(1) .accordion-toggle").trigger("click")
            }),
            $("#getCSSModal").on("hidden.bs.modal", function() {
                $("#getCSSModal .accordion .collapse.show").removeClass("show"),
                    $("#getCSSModal .accordion .accordion-toggle.collapsed").removeClass("collapsed")
            })
    },
    setFontFamily: function(e, o) {
        switch (this.options.fontFamily = e,
            this.options.preserveCookies || $.cookie("fontFamily", e),
            o && !$.cookie("fontFamily") && (e = $("body").hasClass("alternative-font-5") ? "open-sans" : $("body").hasClass("alternative-font-6") ? "montserrat" : $("body").hasClass("alternative-font-7") ? "jost" : "poppins"),
            $("body").removeClass("alternative-font-4 alternative-font-5 alternative-font-6"),
            e) {
            case "poppins":
                $("body").addClass("alternative-font-4");
                break;
            case "open-sans":
                $("body").addClass("alternative-font-5");
                break;
            case "montserrat":
                $("body").addClass("alternative-font-6");
                break;
            case "jost":
                $("body").addClass("alternative-font-7")
        }
        $.cookie("fontFamily") && $(".main-font-family-select").val(e),
            $.event.trigger({
                type: "styleSwitcher.setFontFamily",
                fontFamily: e
            })
    },
    setColors: function(e, o) {
        var a = this;
        if (this.isChanging)
            return !1;
        e && (a.options["color" + o.capitalize()] = e,
                a.container.find(".color-" + o + " input").val(e)),
            a.options.preserveCookies || ($.cookie("colorPrimary", a.options.colorPrimary.replace("#", "")),
                $.cookie("colorSecondary", a.options.colorSecondary.replace("#", "")),
                $.cookie("colorTertiary", a.options.colorTertiary.replace("#", "")),
                $.cookie("colorQuaternary", a.options.colorQuaternary.replace("#", ""))),
            a.modifyVars(),
            this.setLogo()
    },
    setBorderRadius: function(e) {
        var o = this;
        o.options.borderRadius = e,
            o.options.preserveCookies || $.cookie("borderRadius", e),
            o.modifyVars();
        o = this.container.find(".options-links.borders");
        o.find(".active").removeClass("active"),
            o.find("a[data-border-radius=" + e + "]").addClass("active"),
            $.event.trigger({
                type: "styleSwitcher.setBorderRadius",
                radius: e
            })
    },
    setLayoutStyle: function(e, o) {
        if ($("body").hasClass("one-page"))
            return !1;
        if (this.options.preserveCookies || $.cookie("layoutStyle", e),
            this.options.saveToStorage && "undefined" != typeof localStorage && localStorage.setItem("porto-layout", e),
            o)
            return $.cookie("showSwitcher", !0),
                window.location.reload(), !1;
        var a = this.container.find(".options-links.layout"),
            o = this.container.find(".patterns");
        a.find(".active").removeClass("active"),
            a.find("a[data-layout-type=" + e + "]").addClass("active"),
            "wide" == e ? (o.hide(),
                $("html").removeClass("boxed"),
                $.removeCookie("backgroundPattern")) : (o.show(),
                $("html").addClass("boxed"),
                null == $.cookie("backgroundPattern") && this.container.find("ul[data-type=patterns] li:first a").trigger("click"),
                $(window).trigger("layout.boxed")),
            $.event.trigger({
                type: "styleSwitcher.setLayoutStyle",
                style: e
            })
    },
    setWebsiteType: function(e) {
        var o = this.container.find(".options-links.website-type"),
            a = this.container.find(".options-links.layout");
        "one-page" == e ? (o.find("a:last").addClass("active"),
            a.prev().remove(),
            a.remove()) : o.find("a:first").addClass("active")
    },
    setBackgroundColor: function(e) {
        this.options.preserveCookies || $.cookie("backgroundColor", e);
        var o = this.container.find(".options-links.background-color");
        o.find(".active").removeClass("active"),
            o.find("a[data-background-color=" + e + "]").addClass("active"),
            "dark" == e ? $("html").addClass("dark") : $("html").removeClass("dark"),
            $.event.trigger({
                type: "styleSwitcher.setBackgroundColor",
                color: e
            }),
            this.setLogo()
    },
    setBackgroundPattern: function(e) {
        if ("" == e)
            return this;
        $("html").hasClass("boxed") && $("html").css("background-image", "url(img/patterns/" + e + ".png)"),
            this.options.preserveCookies || $.cookie("backgroundPattern", e),
            $.event.trigger({
                type: "styleSwitcher.setBackgroundPattern",
                pattern: e
            })
    },
    setPreLoader: function(e) {
        this.options.preLoader = e,
            this.options.preserveCookies || $.cookie("preLoader", e),
            $(".loading-overlay-select").val(e),
            $.event.trigger({
                type: "styleSwitcher.setpreLoader",
                preLoader: e
            })
    },
    setLogo: function(e) {
        if (!this.options.changeLogo)
            return this;
        e || ("#" + $.cookie("colorPrimary")).toUpperCase() == this.defaults.colorPrimary.toUpperCase() && "dark" != $.cookie("backgroundColor") ? $("#header .header-logo img:not(.header-logo-sticky):not(.logo-small)").attr("src", "img/logo-default-slim.png") : "dark" == $.cookie("backgroundColor") ? $("#header .header-logo img:not(.header-logo-sticky):not(.logo-small)").attr("src", "img/logo-dark.png") : $("#header .header-logo img:not(.header-logo-sticky):not(.logo-small)").attr("src", "img/logo-flat.png"),
            $.event.trigger({
                type: "styleSwitcher.setLogo"
            })
    },
    modifyVars: function() {
        var e = this;
        window.clearTimeout(e.timer),
            e.timer = window.setTimeout(function() {
                less.modifyVars({
                        "@border-radius": e.options.borderRadius,
                        "@color-primary": e.options.colorPrimary,
                        "@color-secondary": e.options.colorSecondary,
                        "@color-tertiary": e.options.colorTertiary,
                        "@color-quaternary": e.options.colorQuaternary
                    }),
                    e.options.saveToStorage && "undefined" != typeof localStorage && localStorage.setItem("porto-skin.css", $('style[id^="less:"]').text()),
                    $.event.trigger({
                        type: "styleSwitcher.modifyVars",
                        options: e.options
                    })
            }, 300)
    },
    reset: function() {
        $.removeCookie("fontFamily"),
            $.removeCookie("borderRadius"),
            $.removeCookie("colorPrimary"),
            $.removeCookie("colorSecondary"),
            $.removeCookie("colorTertiary"),
            $.removeCookie("colorQuaternary"),
            $.removeCookie("layoutStyle"),
            $.removeCookie("backgroundColor"),
            $.removeCookie("backgroundPattern"),
            $.removeCookie("preLoader"),
            window.location.reload(),
            "undefined" != typeof localStorage && (localStorage.removeItem("porto-skin.css"),
                localStorage.removeItem("porto-layout"))
    },
    getCss: function() {
        if ((raw = "") == $(".main-font-family-select").val())
            $("#fontFamilyHeading").closest(".card").addClass("d-none");
        else {
            var e = "",
                o = $("#googleFonts").length ? $("#googleFonts").attr("href") : 0,
                a = $(".main-font-family-select").val(),
                t = "";
            if (0 < o.indexOf("css2"))
                if (t = /=[^&]*/,
                    0 < o.indexOf("css2?family=Open") || 0 < o.indexOf("css2?family=Poppins") || 0 < o.indexOf("css2?family=Montserrat") || 0 < o.indexOf("css2?family=Jost"))
                    switch (a) {
                        case "open-sans":
                            e = o.replace(t, "=Open+Sans:wght@300;400;500;600;700;800");
                            break;
                        case "poppins":
                            e = o.replace(t, "=Poppins:wght@300;400;500;600;700;800");
                            break;
                        case "montserrat":
                            e = o.replace(t, "=Montserrat:wght@300;400;500;600;700;800");
                            break;
                        case "jost":
                            e = o.replace(t, "=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900");
                            break;
                        default:
                            e = o.replace(t, "=Poppins:wght@300;400;500;600;700;800")
                    }
                else
                    switch (a) {
                        case "open-sans":
                            e = o.replace("css2?family=", "css2?family=Open+Sans:wght@300;400;500;600;700;800&font-family=");
                            break;
                        case "poppins":
                            e = o.replace("css2?family=", "css2?family=Poppins:wght@300;400;500;600;700;800&font-family=");
                            break;
                        case "montserrat":
                            e = o.replace("css2?family=", "css2?family=Montserrat:wght@300;400;500;600;700;800&font-family=");
                            break;
                        case "jost":
                            e = o.replace("css2?family=", "css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&font-family=");
                            break;
                        default:
                            e = o.replace("css2?family=", "css2?family=Poppins:wght@300;400;500;600;700;800&font-family=")
                    }
            else if (t = /=[^%]*/,
                0 < o.indexOf("css?family=Open") || 0 < o.indexOf("css?family=Poppins") || 0 < o.indexOf("css?family=Montserrat"))
                switch (a) {
                    case "open-sans":
                        e = o.replace(t, "=Open+Sans:300,400,500,600,700,800");
                        break;
                    case "poppins":
                        e = o.replace(t, "=Poppins:300,400,500,600,700,800");
                        break;
                    case "montserrat":
                        e = o.replace(t, "=Montserrat:300,400,500,600,700,800");
                        break;
                    case "jost":
                        e = o.replace(t, "=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900");
                        break;
                    default:
                        e = o.replace(t, "=Poppins:300,400,500,600,700,800")
                }
            else
                switch (a) {
                    case "open-sans":
                        e = o.replace("css?family=", "css?family=Open+Sans:300,400,500,600,700,800%7C");
                        break;
                    case "poppins":
                        e = o.replace("css?family=", "css?family=Poppins:300,400,500,600,700,800%7C");
                        break;
                    case "montserrat":
                        e = o.replace("css?family=", "css?family=Montserrat:300,400,500,600,700,800%7C");
                        break;
                    case "jost":
                        e = o.replace("css?family=", "css?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900");
                        break;
                    default:
                        e = o.replace("css?family=", "css?family=Poppins:300,400,500,600,700,800%7C")
                }
            switch (a) {
                case "open-sans":
                    raw = 'body { font-family: "Open Sans", "Arial", sans-serif !important; }';
                    break;
                case "montserrat":
                    raw = 'body { font-family: "Montserrat", "Arial", sans-serif !important; }';
                    break;
                case "jost":
                    raw = 'body { font-family: "Jost", sans-serif !important; }';
                    break;
                default:
                    raw = 'body { font-family: "Poppins", "Arial", sans-serif !important; }'
            }
            e.indexOf("&display=swap") < 0 && (e += "&display=swap"),
                $("#googleFontsCode").text('<link id="googleFonts" href="' + e + '" rel="stylesheet" type="text/css">'),
                $("#fontFamilyHeading").closest(".card").removeClass("d-none")
        }
        if ($("html").hasClass("boxed") ? (raw = 'html { background-image: url("../../img/patterns/' + $.cookie("backgroundPattern") + '.png"); }',
                $("#boxedHeading").closest(".card").removeClass("d-none")) : $("#boxedHeading").closest(".card").addClass("d-none"),
            $("html").hasClass("dark") ? $("#darkHeading").closest(".card").removeClass("d-none") : $("#darkHeading").closest(".card").addClass("d-none"),
            $("#getCSSTextarea").text($('style[id^="less:"]').text()).focus(function() {
                var e = $(this);
                e.select(),
                    e.mouseup(function() {
                        return e.unbind("mouseup"), !1
                    })
            }),
            $(".skin-css-path").text($("#skinCSS").attr("href")),
            "" == $(".loading-overlay-select").val())
            $("#preLoaderHeading").closest(".card").addClass("d-none");
        else {
            var s = "";
            switch ($(".loading-overlay-select").val()) {
                case "percentageProgress1":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'percentageProgress1'}\">\n", '<div class="loading-overlay loading-overlay-percentage">\n', '\t<div class="page-loader-progress-wrapper">\n', '\t\t<span class="page-loader-progress">0</span>\n', '\t\t<span class="page-loader-progress-symbol">%</span>\n', "\t</div>\n", "</div>"].join("");
                    break;
                case "percentageProgress2":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'percentageProgress2'}\">\n", '<div class="loading-overlay loading-overlay-percentage loading-overlay-percentage-effect-2">\n', '\t<div class="loading-overlay-background-layer"></div>\n', '\t<div class="page-loader-progress-wrapper">\n', '\t\t<span class="page-loader-progress">0</span>\n', '\t\t<span class="page-loader-progress-symbol">%</span>\n', "\t</div>\n", "</div>"].join("");
                    break;
                case "cubes":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'cubes'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<div class="cssload-thecube">\n', '\t\t\t<div class="cssload-cube cssload-c1"></div>\n', '\t\t\t<div class="cssload-cube cssload-c2"></div>\n', '\t\t\t<div class="cssload-cube cssload-c4"></div>\n', '\t\t\t<div class="cssload-cube cssload-c3"></div>\n', "\t\t</div>\n", "\t</div>\n", "</div>"].join("");
                    break;
                case "cubeProgress":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'cubeProgress'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<span class="cssload-cube-progress">\n', '\t\t\t<span class="cssload-cube-progress-inner"></span>\n', "\t\t</span>\n", "\t</div>\n", "</div>"].join("");
                    break;
                case "floatRings":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'floatRings'}\">\n", '<div class="loading-overlay">\n', '   <div class="bounce-loader">\n', '\t\t<div class="cssload-float-rings-loader">\n', '\t\t\t<div class="cssload-float-rings-inner cssload-one"></div>\n', '\t\t\t<div class="cssload-float-rings-inner cssload-two"></div>\n', '\t\t\t<div class="cssload-float-rings-inner cssload-three"></div>\n', "\t\t</div>\n", "\t</div>\n", "</div>"].join("");
                    break;
                case "floatBars":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'floatBars'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<div class="cssload-float-bars-container">\n', '\t\t\t<ul class="cssload-float-bars-flex-container">\n', "\t\t\t\t<li>\n", '\t\t\t\t\t<span class="cssload-float-bars-loading"></span>\n', "\t\t\t\t</li>\n", "\t\t\t</ul>\n", "\t\t</div>\n", "\t</div>\n", "</div>"].join("");
                    break;
                case "speedingWheel":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'speedingWheel'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<div class="cssload-speeding-wheel-container">\n', '\t\t\t<div class="cssload-speeding-wheel"></div>\n', "\t\t</div>\n", "\t</div>\n", "</div>"].join("");
                    break;
                case "zenith":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'zenith'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<div class="cssload-zenith-container">\n', '\t\t\t<div class="cssload-zenith"></div>\n', "\t\t</div>\n", "\t</div>\n", "</div>"].join("");
                    break;
                case "spinningSquare":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'spinningSquare'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<div class="cssload-spinning-square-loading"></div>\n', "\t</div>\n", "</div>"].join("");
                    break;
                case "pulse":
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'pulse'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<div class="wrapper-pulse">\n', '\t\t\t<div class="cssload-pulse-loader"></div>\n', "\t\t</div>\n", "\t</div>\n", "</div>"].join("");
                    break;
                default:
                    s = ["<body class=\"loading-overlay-showing\" data-loading-overlay data-plugin-options=\"{'hideDelay': 500, 'effect': 'default'}\">\n", '<div class="loading-overlay">\n', '\t<div class="bounce-loader">\n', '\t\t<div class="bounce1"></div>\n', '\t\t<div class="bounce2"></div>\n', '\t\t<div class="bounce3"></div>\n', "\t</div>\n", "</div>"].join("")
            }
            $("#preLoaderCode").text(s),
                $("#preLoaderHeading").closest(".card").removeClass("d-none")
        }
        $("#getCSSModal").modal("show"),
            options = {
                indent: "\t",
                autosemicolon: !0
            },
            raw += $("#getCSSTextarea").text(),
            $("#getCSSTextarea").text(cssbeautify(raw, options))
    }
};
styleSwitcher.initialize();