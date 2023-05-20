.class public final enum Lcom/nimbusds/jose/Payload$Origin;
.super Ljava/lang/Enum;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/Payload$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum JSON:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum STRING:Lcom/nimbusds/jose/Payload$Origin;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 69
    new-instance v0, Lcom/nimbusds/jose/Payload$Origin;

    const/4 v1, 0x0

    const-string v2, "JSON"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->JSON:Lcom/nimbusds/jose/Payload$Origin;

    .line 75
    new-instance v0, Lcom/nimbusds/jose/Payload$Origin;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->STRING:Lcom/nimbusds/jose/Payload$Origin;

    .line 81
    new-instance v0, Lcom/nimbusds/jose/Payload$Origin;

    const/4 v3, 0x2

    const-string v4, "BYTE_ARRAY"

    invoke-direct {v0, v4, v3}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

    .line 87
    new-instance v0, Lcom/nimbusds/jose/Payload$Origin;

    const/4 v4, 0x3

    const-string v5, "BASE64URL"

    invoke-direct {v0, v5, v4}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

    .line 93
    new-instance v0, Lcom/nimbusds/jose/Payload$Origin;

    const/4 v5, 0x4

    const-string v6, "JWS_OBJECT"

    invoke-direct {v0, v6, v5}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

    .line 99
    new-instance v0, Lcom/nimbusds/jose/Payload$Origin;

    const/4 v6, 0x5

    const-string v7, "SIGNED_JWT"

    invoke-direct {v0, v7, v6}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

    const/4 v0, 0x6

    .line 63
    new-array v0, v0, [Lcom/nimbusds/jose/Payload$Origin;

    sget-object v7, Lcom/nimbusds/jose/Payload$Origin;->JSON:Lcom/nimbusds/jose/Payload$Origin;

    aput-object v7, v0, v1

    sget-object v1, Lcom/nimbusds/jose/Payload$Origin;->STRING:Lcom/nimbusds/jose/Payload$Origin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nimbusds/jose/Payload$Origin;->BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nimbusds/jose/Payload$Origin;->BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nimbusds/jose/Payload$Origin;->JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nimbusds/jose/Payload$Origin;->SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->$VALUES:[Lcom/nimbusds/jose/Payload$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/Payload$Origin;
    .registers 2

    .line 63
    const-class v0, Lcom/nimbusds/jose/Payload$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/Payload$Origin;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/Payload$Origin;
    .registers 1

    .line 63
    sget-object v0, Lcom/nimbusds/jose/Payload$Origin;->$VALUES:[Lcom/nimbusds/jose/Payload$Origin;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/Payload$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/Payload$Origin;

    return-object v0
.end method
