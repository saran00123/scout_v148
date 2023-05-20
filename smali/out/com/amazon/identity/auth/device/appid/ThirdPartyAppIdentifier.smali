.class public final Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;
.super Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;
.source "ThirdPartyAppIdentifier.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.appid.ThirdPartyAppIdentifier"

.field private static final REDIRECT_URI_PREFIX:Ljava/lang/String; = "amzn://"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/appid/AbstractAppIdentifier;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowedScopes(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .line 87
    sget-object v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllowedScopes : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 90
    sget-object p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 94
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_2c

    .line 96
    :cond_28
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAllowedScopes()[Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0
.end method

.method public getAppFamilyId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 53
    sget-object v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppFamilyId : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 56
    sget-object p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 60
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_2c

    .line 62
    :cond_28
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0
.end method

.method public getAppInfoByApiKey(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 7

    .line 117
    sget-object v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfo : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_21

    .line 120
    sget-object p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_21
    const/4 v0, 0x0

    .line 123
    invoke-static {p1, p2, v0, p3}, Lcom/amazon/identity/auth/device/appid/APIKeyDecoder;->doDecode(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAppPermissions(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .line 104
    sget-object v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppPermissions : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 107
    sget-object p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 111
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_2c

    .line 113
    :cond_28
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0
.end method

.method public getAppVariantId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 70
    sget-object v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppVariantId : packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 73
    sget-object p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 77
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_2c

    .line 79
    :cond_28
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppVariantId()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0
.end method

.method public getPackageName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageNameByVariant(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageNames(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRedirectUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amzn://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAPIKeyValidFormat(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8

    .line 127
    sget-object v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

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

    .line 130
    sget-object p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "packageName can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_32
    if-nez p2, :cond_3c

    .line 135
    sget-object p1, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;->LOG_TAG:Ljava/lang/String;

    const-string p2, "apiKey can\'t be null!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 139
    :cond_3c
    invoke-static {p1, p2, v0, p3}, Lcom/amazon/identity/auth/device/appid/APIKeyDecoder;->doDecode(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_43

    const/4 v0, 0x1

    :cond_43
    return v0
.end method
