.class public final Lcom/nimbusds/jose/CompressionAlgorithm;
.super Ljava/lang/Object;
.source "CompressionAlgorithm.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field public static final DEF:Lcom/nimbusds/jose/CompressionAlgorithm;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/nimbusds/jose/CompressionAlgorithm;

    const-string v1, "DEF"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/CompressionAlgorithm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nimbusds/jose/CompressionAlgorithm;->DEF:Lcom/nimbusds/jose/CompressionAlgorithm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 75
    iput-object p1, p0, Lcom/nimbusds/jose/CompressionAlgorithm;->name:Ljava/lang/String;

    return-void

    .line 72
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The compression algorithm name must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 113
    instance-of v0, p1, Lcom/nimbusds/jose/CompressionAlgorithm;

    if-eqz v0, :cond_14

    .line 114
    invoke-virtual {p0}, Lcom/nimbusds/jose/CompressionAlgorithm;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/nimbusds/jose/CompressionAlgorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/nimbusds/jose/CompressionAlgorithm;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toJSONString()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/nimbusds/jose/CompressionAlgorithm;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONStringUtils;->toJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/nimbusds/jose/CompressionAlgorithm;->name:Ljava/lang/String;

    return-object v0
.end method
