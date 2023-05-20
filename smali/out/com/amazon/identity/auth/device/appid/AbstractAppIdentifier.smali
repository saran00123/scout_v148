.class public abstract Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;
.super Ljava/lang/Object;
.source "AbstractAppIdentifier.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/appid/AppIdentifier;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.appid.AbstractAppIdentifier"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAPIKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 139
    sget-object v0, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Finding API Key for "

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, p2, p1}, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->getResourceParser(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;->getApiKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract getAppFamilyId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 5

    .line 76
    sget-object v0, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getAppInfo : packageName="

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->getAppInfoFromAPIKey(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAppInfoFromAPIKey(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 5

    .line 81
    sget-object v0, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getAppInfoFromAPIKey : packageName="

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_12

    .line 84
    sget-object p1, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->getAPIKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p1, v0, p2}, Lcom/amazon/identity/auth/device/appid/APIKeyDecoder;->decode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAppLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 117
    sget-object v0, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getAppLabel : packageName="

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 120
    sget-object p1, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 127
    :cond_12
    :try_start_12
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_25} :catch_26

    goto :goto_42

    :catch_26
    move-exception p1

    .line 131
    sget-object p2, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    :goto_42
    return-object p1
.end method

.method public abstract getAppVariantId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPackageName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPackageNameByVariant(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPackageNames(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public getResourceParser(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;
    .registers 4

    .line 154
    new-instance v0, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;

    invoke-direct {v0, p1, p2}, Lcom/amazon/identity/auth/device/utils/ThirdPartyResourceParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAPIKeyValid(Landroid/content/Context;)Z
    .registers 3

    if-nez p1, :cond_b

    .line 28
    sget-object p1, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string v0, "context can\'t be null!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->isAPIKeyValid(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isAPIKeyValid(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5

    .line 41
    sget-object v0, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isAPIKeyValid : packageName="

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 44
    sget-object p1, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 48
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public isAPIKeyValid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8

    .line 56
    sget-object v0, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAPIKeyValid : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_32

    .line 59
    sget-object p1, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_32
    if-nez p2, :cond_3c

    .line 64
    sget-object p1, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "apiKey can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 68
    :cond_3c
    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/appid/APIKeyDecoder;->decode(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_43

    const/4 v0, 0x1

    :cond_43
    return v0
.end method
