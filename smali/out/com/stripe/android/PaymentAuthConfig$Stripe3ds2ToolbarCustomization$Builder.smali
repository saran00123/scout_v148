.class public final Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
.super Ljava/lang/Object;
.source "PaymentAuthConfig.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\tJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;",
        "()V",
        "toolbarCustomization",
        "Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;",
        "build",
        "setBackgroundColor",
        "hexColor",
        "",
        "setButtonText",
        "buttonText",
        "setHeaderText",
        "headerText",
        "setStatusBarColor",
        "setTextColor",
        "setTextFontName",
        "fontName",
        "setTextFontSize",
        "fontSize",
        "",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    invoke-direct {v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;-><init>()V

    check-cast v0, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    iput-object v0, p0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 424
    new-instance v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;

    iget-object v1, p0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;-><init>(Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 337
    invoke-virtual {p0}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->build()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization;

    move-result-object v0

    return-object v0
.end method

.method public final setBackgroundColor(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hexColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;

    .line 348
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setBackgroundColor(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setButtonText(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "buttonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;

    .line 382
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setButtonText(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setHeaderText(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "headerText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;

    .line 371
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setHeaderText(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setStatusBarColor(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hexColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;

    .line 360
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setStatusBarColor(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setTextColor(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hexColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;

    .line 404
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setTextColor(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setTextFontName(Ljava/lang/String;)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fontName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;

    .line 393
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setTextFontName(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setTextFontSize(I)Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 414
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;

    .line 415
    iget-object v1, v0, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2ToolbarCustomization$Builder;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    invoke-interface {v1, p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->setTextFontSize(I)V

    return-object v0
.end method
