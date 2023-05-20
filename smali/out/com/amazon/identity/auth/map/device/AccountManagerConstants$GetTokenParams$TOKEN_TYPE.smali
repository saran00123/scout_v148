.class public final enum Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;
.super Ljava/lang/Enum;
.source "AccountManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TOKEN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

.field public static final enum ACCESS_TOKEN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

.field public static final enum DELEGATED_ACCESS_TOKEN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 145
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    const/4 v1, 0x0

    const-string v2, "ACCESS_TOKEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;->ACCESS_TOKEN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    const/4 v2, 0x1

    const-string v3, "DELEGATED_ACCESS_TOKEN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;->DELEGATED_ACCESS_TOKEN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    sget-object v3, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;->ACCESS_TOKEN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;->DELEGATED_ACCESS_TOKEN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;
    .registers 2

    .line 145
    const-class v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;
    .registers 1

    .line 145
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetTokenParams$TOKEN_TYPE;

    return-object v0
.end method
