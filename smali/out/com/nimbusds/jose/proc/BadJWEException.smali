.class public Lcom/nimbusds/jose/proc/BadJWEException;
.super Lcom/nimbusds/jose/proc/BadJOSEException;
.source "BadJWEException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
