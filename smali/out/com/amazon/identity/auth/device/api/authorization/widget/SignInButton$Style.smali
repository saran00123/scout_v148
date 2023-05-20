.class public final enum Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;
.super Ljava/lang/Enum;
.source "SignInButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

.field public static final enum A_WITH_SMILE:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

.field public static final enum LOGIN:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

.field public static final enum LOGIN_WITH_AMAZON:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    const/4 v1, 0x0

    const-string v2, "A_WITH_SMILE"

    const-string v3, "a"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->A_WITH_SMILE:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    const/4 v2, 0x1

    const-string v3, "LOGIN"

    const-string v4, "login"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->LOGIN:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    .line 17
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    const/4 v3, 0x2

    const-string v4, "LOGIN_WITH_AMAZON"

    const-string v5, "loginwithamazon"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->LOGIN_WITH_AMAZON:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    sget-object v4, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->A_WITH_SMILE:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    aput-object v4, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->LOGIN:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->LOGIN_WITH_AMAZON:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;)Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;
    .registers 2

    .line 14
    const-class v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;
    .registers 1

    .line 14
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->$VALUES:[Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    return-object v0
.end method
