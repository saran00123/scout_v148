.class public final enum Lcom/nimbusds/jose/Requirement;
.super Ljava/lang/Enum;
.source "Requirement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/Requirement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/Requirement;

.field public static final enum OPTIONAL:Lcom/nimbusds/jose/Requirement;

.field public static final enum RECOMMENDED:Lcom/nimbusds/jose/Requirement;

.field public static final enum REQUIRED:Lcom/nimbusds/jose/Requirement;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    new-instance v0, Lcom/nimbusds/jose/Requirement;

    const/4 v1, 0x0

    const-string v2, "REQUIRED"

    invoke-direct {v0, v2, v1}, Lcom/nimbusds/jose/Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    .line 40
    new-instance v0, Lcom/nimbusds/jose/Requirement;

    const/4 v2, 0x1

    const-string v3, "RECOMMENDED"

    invoke-direct {v0, v3, v2}, Lcom/nimbusds/jose/Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    .line 46
    new-instance v0, Lcom/nimbusds/jose/Requirement;

    const/4 v3, 0x2

    const-string v4, "OPTIONAL"

    invoke-direct {v0, v4, v3}, Lcom/nimbusds/jose/Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const/4 v0, 0x3

    .line 28
    new-array v0, v0, [Lcom/nimbusds/jose/Requirement;

    sget-object v4, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    aput-object v4, v0, v1

    sget-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nimbusds/jose/Requirement;->$VALUES:[Lcom/nimbusds/jose/Requirement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/Requirement;
    .registers 2

    .line 28
    const-class v0, Lcom/nimbusds/jose/Requirement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/Requirement;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/Requirement;
    .registers 1

    .line 28
    sget-object v0, Lcom/nimbusds/jose/Requirement;->$VALUES:[Lcom/nimbusds/jose/Requirement;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/Requirement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/Requirement;

    return-object v0
.end method
