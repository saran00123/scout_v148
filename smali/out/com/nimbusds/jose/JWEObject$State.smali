.class public final enum Lcom/nimbusds/jose/JWEObject$State;
.super Ljava/lang/Enum;
.source "JWEObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWEObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/JWEObject$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/JWEObject$State;

.field public static final enum DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

.field public static final enum ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

.field public static final enum UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 50
    new-instance v0, Lcom/nimbusds/jose/JWEObject$State;

    const/4 v1, 0x0

    const-string v2, "UNENCRYPTED"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWEObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 56
    new-instance v0, Lcom/nimbusds/jose/JWEObject$State;

    const/4 v2, 0x1

    const-string v3, "ENCRYPTED"

    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/JWEObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    .line 62
    new-instance v0, Lcom/nimbusds/jose/JWEObject$State;

    const/4 v3, 0x2

    const-string v4, "DECRYPTED"

    invoke-direct {v0, v4, v3}, Lcom/nimbusds/jose/JWEObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Lcom/nimbusds/jose/JWEObject$State;

    sget-object v4, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nimbusds/jose/JWEObject$State;->$VALUES:[Lcom/nimbusds/jose/JWEObject$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/JWEObject$State;
    .registers 2

    .line 44
    const-class v0, Lcom/nimbusds/jose/JWEObject$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/JWEObject$State;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/JWEObject$State;
    .registers 1

    .line 44
    sget-object v0, Lcom/nimbusds/jose/JWEObject$State;->$VALUES:[Lcom/nimbusds/jose/JWEObject$State;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/JWEObject$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/JWEObject$State;

    return-object v0
.end method
