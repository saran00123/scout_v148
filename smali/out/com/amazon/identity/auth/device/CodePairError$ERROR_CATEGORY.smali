.class public final enum Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;
.super Ljava/lang/Enum;
.source "CodePairError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/CodePairError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERROR_CATEGORY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

.field public static final enum ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

.field public static final enum BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

.field public static final enum INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

.field public static final enum NETWORK:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

.field public static final enum UNKNOWN:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 80
    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v1, 0x0

    const-string v2, "ACTION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v2, 0x1

    const-string v3, "BAD_REQUEST"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v3, 0x2

    const-string v4, "NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->NETWORK:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v4, 0x3

    const-string v5, "INTERNAL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    new-instance v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->UNKNOWN:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    const/4 v0, 0x5

    .line 79
    new-array v0, v0, [Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    sget-object v6, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->ACTION:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    aput-object v6, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->BAD_REQUEST:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->NETWORK:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->INTERNAL:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->UNKNOWN:Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->$VALUES:[Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;
    .registers 2

    .line 79
    const-class v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;
    .registers 1

    .line 79
    sget-object v0, Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->$VALUES:[Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/CodePairError$ERROR_CATEGORY;

    return-object v0
.end method
