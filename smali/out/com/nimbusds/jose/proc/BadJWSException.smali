.class public Lcom/nimbusds/jose/proc/BadJWSException;
.super Lcom/nimbusds/jose/proc/BadJOSEException;
.source "BadJWSException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
