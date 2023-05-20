.class public final enum Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
.super Ljava/lang/Enum;
.source "ECDH.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/crypto/impl/ECDH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlgorithmMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

.field public static final enum DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

.field public static final enum KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 59
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    const/4 v1, 0x0

    const-string v2, "DIRECT"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    .line 65
    new-instance v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    const/4 v2, 0x1

    const-string v3, "KW"

    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    sget-object v3, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->DIRECT:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->KW:Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->$VALUES:[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
    .registers 2

    .line 54
    const-class v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;
    .registers 1

    .line 54
    sget-object v0, Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->$VALUES:[Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/crypto/impl/ECDH$AlgorithmMode;

    return-object v0
.end method
