.class public final enum Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;
.super Ljava/lang/Enum;
.source "AccountManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/map/device/AccountManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OVERIDE_APP_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

.field public static final enum FORCE_DEVO:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

.field public static final enum FORCE_PRE_PROD:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

.field public static final enum FORCE_PROD:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

.field public static final enum NO_FORCE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 165
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    const/4 v1, 0x0

    const-string v2, "FORCE_DEVO"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_DEVO:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    const/4 v2, 0x1

    const-string v3, "FORCE_PROD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_PROD:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    const/4 v3, 0x2

    const-string v4, "FORCE_PRE_PROD"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_PRE_PROD:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    const/4 v4, 0x3

    const-string v5, "NO_FORCE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->NO_FORCE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    sget-object v5, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_DEVO:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    aput-object v5, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_PROD:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->FORCE_PRE_PROD:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->NO_FORCE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;
    .registers 2

    .line 165
    const-class v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;
    .registers 1

    .line 165
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$OVERIDE_APP_STATE;

    return-object v0
.end method
