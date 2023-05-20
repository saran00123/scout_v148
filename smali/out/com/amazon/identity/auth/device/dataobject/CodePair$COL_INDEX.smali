.class public final enum Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;
.super Ljava/lang/Enum;
.source "CodePair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dataobject/CodePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COL_INDEX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum APP_ID:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum CREATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum DEVICE_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum ID:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum INTERVAL:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum SCOPES:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum USER_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

.field public static final enum VERIFICATION_URI:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;


# instance fields
.field public final colId:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 51
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v1, 0x0

    const-string v2, "ID"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->ID:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v2, 0x1

    const-string v3, "APP_ID"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 53
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v3, 0x2

    const-string v4, "USER_CODE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->USER_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 54
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v4, 0x3

    const-string v5, "DEVICE_CODE"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->DEVICE_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v5, 0x4

    const-string v6, "VERIFICATION_URI"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->VERIFICATION_URI:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 56
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v6, 0x5

    const-string v7, "INTERVAL"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->INTERVAL:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 57
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v7, 0x6

    const-string v8, "CREATION_TIME"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->CREATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 58
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/4 v8, 0x7

    const-string v9, "EXPIRATION_TIME"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    .line 59
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/16 v9, 0x8

    const-string v10, "SCOPES"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->SCOPES:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    const/16 v0, 0x9

    .line 50
    new-array v0, v0, [Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    sget-object v10, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->ID:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v10, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->USER_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->DEVICE_CODE:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->VERIFICATION_URI:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->INTERVAL:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->CREATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->SCOPES:Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    aput-object v1, v0, v9

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->$VALUES:[Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->colId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;
    .registers 2

    .line 50
    const-class v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;
    .registers 1

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->$VALUES:[Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/dataobject/CodePair$COL_INDEX;

    return-object v0
.end method
