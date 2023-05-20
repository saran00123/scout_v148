.class public final enum Lcom/nimbusds/jose/JWSObject$State;
.super Ljava/lang/Enum;
.source "JWSObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWSObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/JWSObject$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/JWSObject$State;

.field public static final enum SIGNED:Lcom/nimbusds/jose/JWSObject$State;

.field public static final enum UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

.field public static final enum VERIFIED:Lcom/nimbusds/jose/JWSObject$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 51
    new-instance v0, Lcom/nimbusds/jose/JWSObject$State;

    const/4 v1, 0x0

    const-string v2, "UNSIGNED"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/JWSObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    .line 57
    new-instance v0, Lcom/nimbusds/jose/JWSObject$State;

    const/4 v2, 0x1

    const-string v3, "SIGNED"

    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/JWSObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    .line 63
    new-instance v0, Lcom/nimbusds/jose/JWSObject$State;

    const/4 v3, 0x2

    const-string v4, "VERIFIED"

    invoke-direct {v0, v4, v3}, Lcom/nimbusds/jose/JWSObject$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/JWSObject$State;->VERIFIED:Lcom/nimbusds/jose/JWSObject$State;

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Lcom/nimbusds/jose/JWSObject$State;

    sget-object v4, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->VERIFIED:Lcom/nimbusds/jose/JWSObject$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nimbusds/jose/JWSObject$State;->$VALUES:[Lcom/nimbusds/jose/JWSObject$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject$State;
    .registers 2

    .line 45
    const-class v0, Lcom/nimbusds/jose/JWSObject$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/JWSObject$State;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/JWSObject$State;
    .registers 1

    .line 45
    sget-object v0, Lcom/nimbusds/jose/JWSObject$State;->$VALUES:[Lcom/nimbusds/jose/JWSObject$State;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/JWSObject$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/JWSObject$State;

    return-object v0
.end method
