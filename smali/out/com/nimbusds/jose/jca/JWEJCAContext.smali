.class public final Lcom/nimbusds/jose/jca/JWEJCAContext;
.super Lcom/nimbusds/jose/jca/JCAContext;
.source "JWEJCAContext.java"


# instance fields
.field private ceProvider:Ljava/security/Provider;

.field private keProvider:Ljava/security/Provider;

.field private macProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/jca/JWEJCAContext;-><init>(Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/Provider;Ljava/security/SecureRandom;)V
    .registers 6

    .line 95
    invoke-direct {p0, p1, p5}, Lcom/nimbusds/jose/jca/JCAContext;-><init>(Ljava/security/Provider;Ljava/security/SecureRandom;)V

    .line 96
    iput-object p2, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->keProvider:Ljava/security/Provider;

    .line 97
    iput-object p3, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->ceProvider:Ljava/security/Provider;

    .line 98
    iput-object p4, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->macProvider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public getContentEncryptionProvider()Ljava/security/Provider;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->ceProvider:Ljava/security/Provider;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public getKeyEncryptionProvider()Ljava/security/Provider;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->keProvider:Ljava/security/Provider;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public getMACProvider()Ljava/security/Provider;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->macProvider:Ljava/security/Provider;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/jca/JWEJCAContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public setContentEncryptionProvider(Ljava/security/Provider;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->ceProvider:Ljava/security/Provider;

    return-void
.end method

.method public setKeyEncryptionProvider(Ljava/security/Provider;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->keProvider:Ljava/security/Provider;

    return-void
.end method

.method public setMACProvider(Ljava/security/Provider;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/nimbusds/jose/jca/JWEJCAContext;->macProvider:Ljava/security/Provider;

    return-void
.end method
