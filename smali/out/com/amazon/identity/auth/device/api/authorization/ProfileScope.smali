.class public final Lcom/amazon/identity/auth/device/api/authorization/ProfileScope;
.super Ljava/lang/Object;
.source "ProfileScope.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postalCode()Lcom/amazon/identity/auth/device/api/authorization/Scope;
    .registers 1

    const-string v0, "postal_code"

    .line 40
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory;->scopeNamed(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static profile()Lcom/amazon/identity/auth/device/api/authorization/Scope;
    .registers 1

    const-string v0, "profile"

    .line 24
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory;->scopeNamed(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v0

    return-object v0
.end method

.method public static userId()Lcom/amazon/identity/auth/device/api/authorization/Scope;
    .registers 1

    const-string v0, "profile:user_id"

    .line 32
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory;->scopeNamed(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v0

    return-object v0
.end method
