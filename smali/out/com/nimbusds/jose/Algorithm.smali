.class public Lcom/nimbusds/jose/Algorithm;
.super Ljava/lang/Object;
.source "Algorithm.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field public static final NONE:Lcom/nimbusds/jose/Algorithm;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final name:Ljava/lang/String;

.field private final requirement:Lcom/nimbusds/jose/Requirement;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Lcom/nimbusds/jose/Algorithm;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    sput-object v0, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 80
    iput-object p1, p0, Lcom/nimbusds/jose/Algorithm;->name:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/nimbusds/jose/Algorithm;->requirement:Lcom/nimbusds/jose/Requirement;

    return-void

    .line 77
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The algorithm name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/Algorithm;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_4
    new-instance v0, Lcom/nimbusds/jose/Algorithm;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 142
    instance-of v0, p1, Lcom/nimbusds/jose/Algorithm;

    if-eqz v0, :cond_14

    .line 143
    invoke-virtual {p0}, Lcom/nimbusds/jose/Algorithm;->toString()Ljava/lang/String;

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

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/nimbusds/jose/Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequirement()Lcom/nimbusds/jose/Requirement;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/nimbusds/jose/Algorithm;->requirement:Lcom/nimbusds/jose/Requirement;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/nimbusds/jose/Algorithm;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/nimbusds/jose/Algorithm;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONStringUtils;->toJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/nimbusds/jose/Algorithm;->name:Ljava/lang/String;

    return-object v0
.end method
