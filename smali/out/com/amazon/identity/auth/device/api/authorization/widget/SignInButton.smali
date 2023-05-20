.class public Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;
.super Landroid/widget/ImageButton;
.source "SignInButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;,
        Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;
    }
.end annotation


# static fields
.field private static final BUTTON_IMAGE_PREFIX:Ljava/lang/String; = "btnlwa"

.field private static final BUTTON_PRESSED_SUFFIX:Ljava/lang/String; = "pressed"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.authorization.widget.SignInButton"

.field private static final resourceIdCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

.field private style:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->resourceIdCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->LOGIN_WITH_AMAZON:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->style:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    .line 45
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->GOLD:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->color:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    .line 46
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->updateImage()V

    return-void
.end method

.method private getButtonDescription()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->style:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->color:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    .line 100
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->isPressed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Button configuration = { style:%s color:%s pressed:%b }"

    .line 99
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getButtonNameForCurrentState()Ljava/lang/String;
    .registers 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btnlwa"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->color:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;->access$000(Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->style:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;->access$100(Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pressed"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourceIdForCurrentState()I
    .registers 6

    .line 68
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->getButtonNameForCurrentState()Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->resourceIdCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_65

    const/4 v1, 0x2

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "%s:drawable/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 75
    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->resourceIdCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 77
    :cond_3e
    sget-object v2, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find the resource ID for the image named \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\". It must be added to the drawables resources  ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->getButtonDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_65
    :goto_65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private updateImage()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->getResourceIdForCurrentState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public setColor(Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->color:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Color;

    return-void
.end method

.method public setPressed(Z)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 60
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->updateImage()V

    return-void
.end method

.method public setStyle(Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton;->style:Lcom/amazon/identity/auth/device/api/authorization/widget/SignInButton$Style;

    return-void
.end method
