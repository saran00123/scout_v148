.class public final enum Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;
.super Ljava/lang/Enum;
.source "AuthzConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FUTURE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

.field public static final enum CANCEL:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

.field public static final enum ERROR:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

.field public static final enum SUCCESS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 63
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->SUCCESS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    .line 64
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->ERROR:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    .line 65
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    const/4 v3, 0x2

    const-string v4, "CANCEL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->CANCEL:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    const/4 v0, 0x3

    .line 61
    new-array v0, v0, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    sget-object v4, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->SUCCESS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->ERROR:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->CANCEL:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;
    .registers 2

    .line 61
    const-class v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;
    .registers 1

    .line 61
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    return-object v0
.end method
