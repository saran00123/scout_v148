.class public final enum Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;
.super Ljava/lang/Enum;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/dataobject/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COL_INDEX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

.field public static final enum APP_ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

.field public static final enum DATA:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

.field public static final enum EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

.field public static final enum ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;


# instance fields
.field public final colId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    const/4 v1, 0x0

    const-string v2, "ID"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    const/4 v2, 0x1

    const-string v3, "EXPIRATION_TIME"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    const/4 v3, 0x2

    const-string v4, "APP_ID"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    new-instance v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    const/4 v4, 0x3

    const-string v5, "DATA"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->DATA:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    sget-object v5, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    aput-object v5, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->EXPIRATION_TIME:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->APP_ID:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->DATA:Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->$VALUES:[Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->colId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;
    .registers 2

    .line 31
    const-class v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;
    .registers 1

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->$VALUES:[Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/dataobject/Profile$COL_INDEX;

    return-object v0
.end method
