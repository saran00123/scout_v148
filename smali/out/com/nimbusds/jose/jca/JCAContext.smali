.class public Lcom/nimbusds/jose/jca/JCAContext;
.super Ljava/lang/Object;
.source "JCAContext.java"


# instance fields
.field private provider:Ljava/security/Provider;

.field private randomGen:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    .line 68
    iput-object p2, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public getProvider()Ljava/security/Provider;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_a
    return-object v0
.end method

.method public setProvider(Ljava/security/Provider;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->provider:Ljava/security/Provider;

    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JCAContext;->randomGen:Ljava/security/SecureRandom;

    return-void
.end method
