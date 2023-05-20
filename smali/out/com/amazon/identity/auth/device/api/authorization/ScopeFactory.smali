.class public final Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory;
.super Ljava/lang/Object;
.source "ScopeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory$GenericScope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scopeNamed(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/Scope;
    .registers 2

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory$GenericScope;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory$GenericScope;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static scopeNamed(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/api/authorization/Scope;
    .registers 3

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory$GenericScope;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory$GenericScope;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
