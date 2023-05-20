.class public final Lcom/amazon/identity/auth/device/StoredPreferences;
.super Ljava/lang/Object;
.source "StoredPreferences.java"


# static fields
.field private static final DATA_ENCRYPTION_KEY:Ljava/lang/String; = "com.amazon.lwa.encryption.key"

.field private static final KEY_REGION_MODE:Ljava/lang/String; = "com.amazon.lwa.regionMode"

.field private static final KEY_SANDBOX_MODE:Ljava/lang/String; = "com.amazon.lwa.sandboxMode"

.field private static final KEY_TOKEN_FROM_SSO:Ljava/lang/String; = "com.amazon.lwa.isTokenObtainedFromSSO"

.field private static final LWA_SHARED_PREFS:Ljava/lang/String; = "com.amazon.lwa.LWASharedPreferences"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptionKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 67
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.amazon.lwa.encryption.key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "com.amazon.lwa.LWASharedPreferences"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getRegion(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/authorization/Region;
    .registers 3

    .line 47
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->AUTO:Lcom/amazon/identity/auth/device/api/authorization/Region;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/authorization/Region;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.lwa.regionMode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/authorization/Region;->valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/Region;

    move-result-object p0

    return-object p0
.end method

.method public static getStoredEncryptionVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 57
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSandboxMode(Landroid/content/Context;)Z
    .registers 3

    .line 39
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.amazon.lwa.sandboxMode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isTokenObtainedFromSSO(Landroid/content/Context;)Z
    .registers 3

    .line 31
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.amazon.lwa.isTokenObtainedFromSSO"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setEncryptionKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 62
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "com.amazon.lwa.encryption.key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setEncryptionVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 52
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setRegion(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/authorization/Region;)V
    .registers 3

    .line 43
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/Region;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.lwa.regionMode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSandboxMode(Landroid/content/Context;Z)V
    .registers 3

    .line 35
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "com.amazon.lwa.sandboxMode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setTokenObtainedFromSSO(Landroid/content/Context;Z)V
    .registers 3

    .line 27
    invoke-static {p0}, Lcom/amazon/identity/auth/device/StoredPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "com.amazon.lwa.isTokenObtainedFromSSO"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
