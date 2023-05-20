.class public Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANDRIOD_SYSTEMPROP:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final COUNTRYCODE_SIZE:I = 0x2

.field private static final LOCALE_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale"

.field private static final LOCALE_REGION_COUNTRYSYSTEMPROP:Ljava/lang/String; = "ro.product.locale.region"

.field private static final SPECIAL_COUNTRYCODE_CN:Ljava/lang/String; = "cn"

.field private static final SPECIAL_COUNTRYCODE_EU:Ljava/lang/String; = "eu"

.field private static final SPECIAL_COUNTRYCODE_GB:Ljava/lang/String; = "gb"

.field private static final SPECIAL_COUNTRYCODE_LA:Ljava/lang/String; = "la"

.field private static final SPECIAL_COUNTRYCODE_UK:Ljava/lang/String; = "uk"

.field private static final TAG:Ljava/lang/String; = "CountryCodeBean"

.field private static final VENDORCOUNTRY_SYSTEMPROP:Ljava/lang/String; = "ro.hw.country"


# instance fields
.field private countryCode:Ljava/lang/String;

.field private countrySource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->init(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-void
.end method

.method private checkCodeLenth()V
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    :cond_b
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method private getLocaleCountryCode()V
    .registers 2

    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->isUpPVersion()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getRegionSettingCountryCode()V

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getProductCountryCode()V

    :goto_d
    const-string v0, "LOCALE_INFO"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    return-void
.end method

.method private getProductCountryCode()V
    .registers 7

    const-string v0, "android.os.SystemProperties"

    const-string v1, "get"

    const-string v2, "UNKNOWN"

    const-string v3, "ro.product.locale.region"

    invoke-static {v1, v3, v0, v2}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object v3, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryCode by ro.product.locale.region is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    :cond_36
    const-string v3, "ro.product.locale"

    invoke-static {v1, v3, v0, v2}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCode by ro.product.locale is:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6b
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_77

    iput-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    :cond_77
    return-void
.end method

.method private getRegionSettingCountryCode()V
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object v0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryCode by system\'s region setting is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    :cond_2e
    return-void
.end method

.method private getSimCountryCode(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;Z)V

    return-void
.end method

.method private getSimCountryCode(Landroid/content/Context;Z)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_4d

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2b

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "NETWORK_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "countryCode by NetworkCountryIso is: "

    goto :goto_3e

    :cond_2b
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string p1, "SIM_COUNTRY"

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "countryCode by SimCountryIso is: "

    :goto_3e
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4d
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    return-void
.end method

.method private getVendorCountryCode()V
    .registers 6

    const-string v0, "VENDOR_COUNTRY"

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    const-string v2, "get"

    const-string v3, "ro.hw.country"

    const-string v4, "android.os.SystemProperties"

    invoke-static {v2, v3, v4, v1}, Lcom/huawei/hms/framework/common/SystemPropUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    sget-object v2, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCode by ro.hw.country is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v3, "eu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v3, "la"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_5b

    :cond_3f
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v2, "uk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object v1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string v2, "special country of UK to map GB."

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gb"

    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    goto :goto_5f

    :cond_57
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->checkCodeLenth()V

    goto :goto_5f

    :cond_5b
    :goto_5b
    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    :goto_5f
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .registers 3

    if-eqz p1, :cond_3d

    :try_start_2
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getVendorCountryCode()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p2

    if-eqz p2, :cond_13

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "get issue_country code from VENDOR_COUNTRY"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getSimCountryCode(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "get issue_country code from SIM_COUNTRY"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_24
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getLocaleCountryCode()V

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->isCodeValidate()Z

    move-result p1

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "get issue_country code from LOCALE_INFO"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    goto :goto_3c

    :catch_35
    sget-object p1, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->TAG:Ljava/lang/String;

    const-string p2, "get CountryCode error"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context must be not null.Please provide app\'s Context"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isCodeValidate()Z
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrySource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->countrySource:Ljava/lang/String;

    return-object v0
.end method
