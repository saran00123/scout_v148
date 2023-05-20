.class public Lcom/amazon/identity/auth/device/InsufficientScopeAuthError;
.super Lcom/amazon/identity/auth/device/AuthError;
.source "InsufficientScopeAuthError.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5d9965fa7a55a1b7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 15
    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_BAD_API_PARAM:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    return-void
.end method
