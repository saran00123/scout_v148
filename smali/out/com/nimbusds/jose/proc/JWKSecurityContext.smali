.class public Lcom/nimbusds/jose/proc/JWKSecurityContext;
.super Ljava/lang/Object;
.source "JWKSecurityContext.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/SecurityContext;


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JWKSecurityContext;->keys:Ljava/util/List;

    if-eqz p1, :cond_8

    return-void

    .line 47
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The list of keys must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWKSecurityContext;->keys:Ljava/util/List;

    return-object v0
.end method
