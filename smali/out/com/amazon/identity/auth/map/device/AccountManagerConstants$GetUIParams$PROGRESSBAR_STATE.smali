.class public final enum Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;
.super Ljava/lang/Enum;
.source "AccountManagerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROGRESSBAR_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

.field public static final enum OFF:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

.field public static final enum PROGRESS_BAR:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

.field public static final enum SPINNER_LARGE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

.field public static final enum SPINNER_MEDIUM:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

.field public static final enum SPINNER_SMALL:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 220
    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    const/4 v1, 0x0

    const-string v2, "OFF"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->OFF:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    const/4 v2, 0x1

    const-string v3, "PROGRESS_BAR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->PROGRESS_BAR:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    const/4 v3, 0x2

    const-string v4, "SPINNER_SMALL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->SPINNER_SMALL:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    const/4 v4, 0x3

    const-string v5, "SPINNER_MEDIUM"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->SPINNER_MEDIUM:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    new-instance v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    const/4 v5, 0x4

    const-string v6, "SPINNER_LARGE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->SPINNER_LARGE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    sget-object v6, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->OFF:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    aput-object v6, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->PROGRESS_BAR:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->SPINNER_SMALL:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->SPINNER_MEDIUM:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->SPINNER_LARGE:Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;
    .registers 2

    .line 220
    const-class v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;
    .registers 1

    .line 220
    sget-object v0, Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->$VALUES:[Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/map/device/AccountManagerConstants$GetUIParams$PROGRESSBAR_STATE;

    return-object v0
.end method
