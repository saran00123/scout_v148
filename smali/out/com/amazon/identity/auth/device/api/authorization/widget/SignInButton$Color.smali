.class public final enum Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;
.super Ljava/lang/Enum;
.source "SignInButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

.field public static final enum DARK_GRAY:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

.field public static final enum GOLD:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

.field public static final enum GRAY:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    const/4 v1, 0x0

    const-string v2, "GOLD"

    const-string v3, "gold"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->GOLD:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    const/4 v2, 0x1

    const-string v3, "GRAY"

    const-string v4, "gry"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->GRAY:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    .line 26
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    const/4 v3, 0x2

    const-string v4, "DARK_GRAY"

    const-string v5, "dark_gray"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->DARK_GRAY:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    sget-object v4, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->GOLD:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    aput-object v4, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->GRAY:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->DARK_GRAY:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;
    .registers 2

    .line 23
    const-class v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;
    .registers 1

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    return-object v0
.end method
