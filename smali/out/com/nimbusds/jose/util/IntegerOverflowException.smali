.class public Lcom/nimbusds/jose/util/IntegerOverflowException;
.super Lcom/nimbusds/jose/JOSEException;
.source "IntegerOverflowException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Integer overflow"

    .line 34
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    return-void
.end method
