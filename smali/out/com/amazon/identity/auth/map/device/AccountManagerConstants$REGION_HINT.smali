.class public enum Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;
.super Ljava/lang/Enum;
.source "AccountManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/map/device/AccountManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "REGION_HINT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

.field public static final enum CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

.field public static final enum EU:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

.field public static final enum FE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

.field public static final enum NA:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 170
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$1;

    const/4 v1, 0x0

    const-string v2, "NA"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->NA:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    .line 177
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$2;

    const/4 v2, 0x1

    const-string v3, "EU"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->EU:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    .line 183
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$3;

    const/4 v3, 0x2

    const-string v4, "CN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    .line 189
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$4;

    const/4 v4, 0x3

    const-string v5, "FE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->FE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    const/4 v0, 0x4

    .line 169
    new-array v0, v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    sget-object v5, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->NA:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    aput-object v5, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->EU:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->CN:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->FE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/identity/auth/map/device/AccountManagerConstants$1;)V
    .registers 4

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;
    .registers 2

    .line 169
    const-class v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;
    .registers 1

    .line 169
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$REGION_HINT;

    return-object v0
.end method
