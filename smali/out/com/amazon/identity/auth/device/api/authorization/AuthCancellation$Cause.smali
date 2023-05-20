.class public final enum Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;
.super Ljava/lang/Enum;
.source "AuthCancellation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

.field public static final enum FAILED_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    const/4 v1, 0x0

    const-string v2, "FAILED_AUTHENTICATION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->FAILED_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->FAILED_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromCode(I)Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;
    .registers 1

    .line 65
    sget-object p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->FAILED_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;
    .registers 2

    .line 50
    const-class v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;
    .registers 1

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    return-object v0
.end method
