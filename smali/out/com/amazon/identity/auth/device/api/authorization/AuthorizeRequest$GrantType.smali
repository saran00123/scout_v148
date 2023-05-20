.class public final enum Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;
.super Ljava/lang/Enum;
.source "AuthorizeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

.field public static final enum ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

.field public static final enum AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    const/4 v1, 0x0

    const-string v2, "ACCESS_TOKEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    const/4 v2, 0x1

    const-string v3, "AUTHORIZATION_CODE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    sget-object v3, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;
    .registers 2

    .line 41
    const-class v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;
    .registers 1

    .line 41
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$GrantType;

    return-object v0
.end method
