.class public Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;
.super Ljava/lang/Object;
.source "MultiLanguageUtils.java"


# instance fields
.field private callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils$1;-><init>(Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 2

    .line 33
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->setAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method

.method public static attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 85
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 87
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->setAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_12
    return-object p0
.end method

.method public static changeLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "en"

    .line 43
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setUserLanguage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17

    .line 46
    :cond_c
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->setAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V

    .line 48
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->saveLanguageSetting(Landroid/content/Context;Ljava/util/Locale;)V

    :goto_17
    return-void
.end method

.method public static getAppLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 3

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_22

    .line 122
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_22
    return-object p0
.end method

.method public static getSysPreferredLocale()Ljava/util/Locale;
    .registers 2

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_b

    .line 237
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_14

    .line 246
    :cond_b
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public static getSystemLanguage()Landroidx/core/os/LocaleListCompat;
    .registers 1

    .line 131
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 1

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static isSameWithSetting(Landroid/content/Context;)Z
    .registers 2

    .line 97
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static saveLanguageSetting(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 2

    .line 111
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setUserLanguage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static setAppLanguage(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 8

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 63
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2a

    .line 64
    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 65
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 66
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_3c

    .line 71
    :cond_2a
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt p0, v3, :cond_37

    .line 73
    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_3c

    .line 76
    :cond_37
    iput-object p1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :goto_3c
    return-void
.end method

.method public static setConfiguration(Landroid/content/Context;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 211
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 212
    invoke-static {}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->getSysPreferredLocale()Ljava/util/Locale;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 214
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1d

    .line 215
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1f

    .line 217
    :cond_1d
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 220
    :goto_1f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
